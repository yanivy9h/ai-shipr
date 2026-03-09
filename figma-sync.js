#!/usr/bin/env node

/**
 * figma-sync.js
 * AI-SHIPR — Figma Integration Pipe
 *
 * Fetches a Figma file's structure and saves it as a .md file
 * in I-Information/Integrations/Figma/
 *
 * Usage:
 *   node figma-sync.js <figma-url>
 *   node figma-sync.js https://www.figma.com/design/aRDxTsABxgP6NAGEb2U7zo/My-File
 *
 * Requires: FIGMA_TOKEN env variable (or .env file in this folder)
 */

const https = require('https');
const fs = require('fs');
const path = require('path');

// --- Load .env if present ---
const envPath = path.join(__dirname, '.env');
if (fs.existsSync(envPath)) {
  const envContent = fs.readFileSync(envPath, 'utf8');
  envContent.split('\n').forEach(line => {
    const [key, ...valueParts] = line.split('=');
    if (key && valueParts.length > 0) {
      process.env[key.trim()] = valueParts.join('=').trim().replace(/^["']|["']$/g, '');
    }
  });
}

// --- Config ---
const FIGMA_TOKEN = process.env.FIGMA_TOKEN;
const OUTPUT_DIR = path.join(__dirname, 'I-Information', 'Integrations', 'Figma');

// --- Helpers ---
function extractFileKey(input) {
  // Handles full URLs and raw file keys
  const match = input.match(/figma\.com\/(?:design|file)\/([a-zA-Z0-9]+)/);
  return match ? match[1] : input;
}

function today() {
  return new Date().toISOString().split('T')[0];
}

function slugify(str) {
  return str.toLowerCase().replace(/[^a-z0-9]+/g, '-').replace(/^-|-$/g, '');
}

function fetchJson(url, token) {
  return new Promise((resolve, reject) => {
    const options = {
      headers: { 'X-Figma-Token': token }
    };
    https.get(url, options, (res) => {
      let data = '';
      res.on('data', chunk => data += chunk);
      res.on('end', () => {
        try {
          resolve(JSON.parse(data));
        } catch (e) {
          reject(new Error(`Failed to parse response: ${data.substring(0, 200)}`));
        }
      });
    }).on('error', reject);
  });
}

// --- Extract design context from Figma document tree ---
function extractPages(document) {
  const pages = [];

  for (const page of document.children || []) {
    if (page.type !== 'CANVAS') continue;

    const frames = [];
    for (const node of page.children || []) {
      if (!['FRAME', 'COMPONENT', 'COMPONENT_SET', 'SECTION'].includes(node.type)) continue;

      // Collect text content from frame children (max depth 3)
      const texts = [];
      const components = [];
      collectTextsAndComponents(node, texts, components, 0, 3);

      frames.push({
        id: node.id,
        name: node.name,
        type: node.type,
        texts: texts.slice(0, 8), // cap at 8 text items per frame
        components: [...new Set(components)].slice(0, 6),
        width: node.absoluteBoundingBox ? Math.round(node.absoluteBoundingBox.width) : null,
        height: node.absoluteBoundingBox ? Math.round(node.absoluteBoundingBox.height) : null,
      });
    }

    pages.push({
      name: page.name,
      frameCount: frames.length,
      frames
    });
  }

  return pages;
}

function collectTextsAndComponents(node, texts, components, depth, maxDepth) {
  if (depth > maxDepth) return;

  if (node.type === 'TEXT' && node.characters) {
    const text = node.characters.trim();
    if (text.length > 0 && text.length < 200) {
      texts.push(text);
    }
  }

  if (node.type === 'INSTANCE' && node.name) {
    components.push(node.name.split('/').pop().trim()); // get leaf component name
  }

  for (const child of node.children || []) {
    collectTextsAndComponents(child, texts, components, depth + 1, maxDepth);
  }
}

// --- Build the .md output ---
function buildMarkdown(fileData, pages, fileKey, originalUrl) {
  const fileName = fileData.name;
  const dateStr = today();
  const pageNames = pages.map(p => p.name).join(', ');
  const totalFrames = pages.reduce((sum, p) => sum + p.frameCount, 0);

  let md = `---
source: figma
file: ${fileName}
file_key: ${fileKey}
url: ${originalUrl}
date: ${dateStr}
pages: ${pageNames}
frames_count: ${totalFrames}
processed: false
---

# Figma — ${fileName} — ${dateStr}

`;

  for (const page of pages) {
    md += `## Page: ${page.name}\n\n`;

    if (page.frames.length === 0) {
      md += `_No frames found on this page._\n\n`;
      continue;
    }

    for (const frame of page.frames) {
      const dims = frame.width && frame.height ? ` (${frame.width}×${frame.height}px)` : '';
      md += `### ${frame.name}${dims}\n`;

      if (frame.texts.length > 0) {
        md += `**Key text:**\n`;
        for (const t of frame.texts) {
          md += `- ${t}\n`;
        }
      }

      if (frame.components.length > 0) {
        md += `**Components used:** ${frame.components.join(', ')}\n`;
      }

      md += '\n';
    }
  }

  // Collect all unique components across all pages
  const allComponents = new Set();
  for (const page of pages) {
    for (const frame of page.frames) {
      frame.components.forEach(c => allComponents.add(c));
    }
  }

  if (allComponents.size > 0) {
    md += `## Components Inventory\n\n`;
    for (const c of allComponents) {
      md += `- ${c}\n`;
    }
    md += '\n';
  }

  md += `---\n_Synced by figma-sync.js — ${dateStr}_\n`;

  return md;
}

// --- Main ---
async function main() {
  const input = process.argv[2];

  if (!input) {
    console.error('Usage: node figma-sync.js <figma-url-or-file-key>');
    process.exit(1);
  }

  if (!FIGMA_TOKEN) {
    console.error([
      'Error: FIGMA_TOKEN not found.',
      '',
      'Set it in one of two ways:',
      '  1. Add to ~/.zshrc:  export FIGMA_TOKEN="your-token"',
      '  2. Create a .env file in this folder:  FIGMA_TOKEN=your-token',
      '',
      'Get a token at: figma.com → Settings → Personal access tokens',
    ].join('\n'));
    process.exit(1);
  }

  const fileKey = extractFileKey(input);
  console.log(`Fetching Figma file: ${fileKey}`);

  let fileData;
  try {
    fileData = await fetchJson(
      `https://api.figma.com/v1/files/${fileKey}?depth=4`,
      FIGMA_TOKEN
    );
  } catch (err) {
    console.error(`Failed to fetch file: ${err.message}`);
    process.exit(1);
  }

  if (fileData.err) {
    console.error(`Figma API error: ${fileData.err}`);
    process.exit(1);
  }

  console.log(`File: "${fileData.name}" — extracting pages...`);

  const pages = extractPages(fileData.document);
  const totalFrames = pages.reduce((sum, p) => sum + p.frameCount, 0);
  console.log(`Found ${pages.length} page(s), ${totalFrames} frame(s)`);

  const md = buildMarkdown(fileData, pages, fileKey, input);

  // Write output
  const slug = slugify(fileData.name).substring(0, 40);
  const outputFile = path.join(OUTPUT_DIR, `figma-${today()}-${slug}.md`);

  if (!fs.existsSync(OUTPUT_DIR)) {
    fs.mkdirSync(OUTPUT_DIR, { recursive: true });
  }

  fs.writeFileSync(outputFile, md, 'utf8');
  console.log(`\nSaved: ${outputFile}`);
  console.log(`\nNext: activate figma in Settings.md, then ask Claude to use it.`);
}

main();
