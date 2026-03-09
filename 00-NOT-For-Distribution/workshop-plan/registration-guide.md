# Registration Guide — AI-SHIPR Workshop

## Decision: Platform for First Cohorts (Israel)

**Recommended approach for first workshops (test cohorts, ₪700):**

Use Google Form + GrowPay. Manual confirmation. Yaniv controls who gets in.

---

## Why This Approach

| Option | Pros | Cons |
|--------|------|-------|
| **Google Form + GrowPay** | Free, instant, bilingual, Israeli tax-compliant, Bit + credit card, Yaniv approves each seat | Manual — no auto-confirmation |
| Luma | Clean event page, seat limits, auto-confirmations | ILS payment unclear, no Hebrew UI |
| GrowPay standalone | Tax-compliant, auto-receipt | No registration form, no seat gating |

For first cohorts: manual control is a feature, not a bug. Yaniv reviews each applicant and sends the payment link only to those approved. This protects cohort quality while the flow is being tested.

**When to migrate to Luma:** English-language cohorts at scale. Luma works well for international audiences and handles seat limits cleanly.

This decision is logged in `M-memory/decisions.md`.

---

## Setup: Google Form

### Step 1 — Create the Form

1. Go to forms.google.com
2. Click "+ Blank"
3. Title: "AI-SHIPR Workshop — Registration"

### Step 2 — Add These Fields (English tab)

| Field | Type | Required |
|-------|------|----------|
| Full name | Short answer | Yes |
| Email address | Short answer | Yes |
| Company / organization | Short answer | Yes |
| Your role / title | Short answer | Yes |
| What product are you currently working on? | Paragraph | Yes |
| How did you hear about this workshop? | Short answer | No |

### Step 3 — Add Hebrew Fields

Option A: Duplicate the form and create a Hebrew version (separate URL)
Option B: Add a section divider labeled "עברית" and repeat the same fields in Hebrew

Recommended: Two separate forms. Cleaner for respondents, easier to track separately.

Hebrew form title: "סדנת AI-SHIPR — הרשמה"

Hebrew field labels:
- שם מלא
- כתובת אימייל
- חברה / ארגון
- תפקיד
- על איזה מוצר אתה/את עובד/ת כרגע?
- איך שמעת על הסדנה?

### Step 4 — Settings

- Collect email addresses: On (from the respondent's Gmail, or add the email field — both)
- Limit to 1 response: Off (different people may share the same device)
- Send copy to respondent: On
- Confirmation message: "תודה. נחזור אליך תוך 24 שעות." / "Thank you. We'll be in touch within 24 hours."

### Step 5 — Get the Form URL

Share > Copy link. This is the URL you paste into the website CMS.

---

## Setup: GrowPay Payment Link

### Step 1 — Log in to GrowPay

If you do not have an account, create one at grow.business.

### Step 2 — Create a Payment Link

1. Click "קבלת תשלום" (Receive Payment)
2. Select "לינק לתשלום" (Payment Link)
3. Fill in:
   - Item description: "סדנת AI-SHIPR — מושב אחד" / "AI-SHIPR Workshop — 1 seat"
   - Price: ₪700
   - Quantity: 1
   - Tax: Add VAT if applicable (consult your accountant on freelance invoice status)
4. Generate link

### Step 3 — Payment Methods

GrowPay supports:
- Credit card (Visa, Mastercard, Amex)
- Bit (Israeli mobile payment)

Both are enabled by default.

### Step 4 — Auto-Receipt

GrowPay automatically sends a receipt to the payer after payment. This satisfies the legal receipt obligation in Israel. No manual step needed.

### Step 5 — Manual Confirmation Workflow

After someone submits the Google Form:
1. Review their application (takes 2 minutes)
2. If approving: reply to their email with the GrowPay payment link
3. After payment confirmation (GrowPay emails you): send the welcome email

---

## Updating the Website CMS

After you have the Google Form URLs, log into WordPress:

1. Go to: WP Admin > Verve-PM > AI-SHIPR fields
2. Update these fields:

| Field | Value |
|-------|-------|
| `workshop.registration_link_en` | English Google Form URL |
| `workshop.registration_link_he` | Hebrew Google Form URL |
| `workshop.date_en` | First workshop date (e.g. "March 18, 2026") |
| `workshop.date_he` | First workshop date in Hebrew (e.g. "18 במרץ 2026") |
| `workshop.price_en` | ₪700 |
| `workshop.price_he` | ₪700 |

3. Save. No ZIP rebuild needed — this is CMS data only, not a code change.
4. View the landing page and confirm the CTA button links to the form.

---

## Registration Tracking

Track registrations in a simple spreadsheet:

| Name | Email | Company | Role | Form submitted | Payment received | Confirmed |
|------|-------|---------|------|---------------|-----------------|-----------|

For the first two cohorts (testing): close registration manually once you have enough participants to test the flow and gather feedback. After that, registration is open — close only when the session date is full.

If demand exceeds capacity for a date, add a second session rather than a waitlist.

---

## Scaling Notes

When moving to English international cohorts:
- Migrate to Luma for cleaner event pages and built-in seat limits
- Luma handles confirmations and reminders automatically
- Use Stripe for USD payments (Luma integrates natively)
- Retire the manual Google Form + GrowPay flow for those cohorts

---

*Last updated: 2026-03-02*
