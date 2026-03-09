שלחתי עדכון למערכת היום.

Figma connector — חיבור ל-Figma

עכשיו אפשר לסנכרן קובץ Figma ישירות ל-AI-SHIPR עם פקודה אחת:

node figma-sync.js https://www.figma.com/design/...

Claude קורא את הקובץ אוטומטית:

כל הסקרינים לפי שם
מבנה הדפים והפריימים
טקסטים ורכיבים בכל מסך
ואז כשאתם מריצים PRD-Builder או Hypothesis-Builder — הוא כבר יודע על הדיזיין שלכם. לא צריך להסביר לו את המסכים מחדש.

הגדרה: דרוש Personal Access Token מ-Figma (חינם, שתי דקות). הוראות מלאות ב-I-Information/Integrations/Figma/README.md.

תמיכה בניהול צוות — Team Lead Mode

AI-SHIPR עכשיו תומך גם ב-VP Product, Head of Product, ו-Group PM.

מה נוסף:

תיקיית R-Relationships/Team/ — רוסטר הצוות, פרופיל לכל PM, לוג 1:1, גיוס
2 סוכנים: Team-Manager (ניהול 1:1, שיחות קשות, בריאות הצוות) ו-Portfolio-Strategist (כיסוי בטים, הקצאת משאבים, עדכוני הנהלה)
7 סקילים: Portfolio Priority Stack, Resource Allocation Mapper, Team Health Check, PM Performance Review, Org Design Framer, Board Update Builder, Hiring Brief Builder
3 וורקפלואים: /team-review, /portfolio, /allocate
4 פלייבוקים: הכנה לסקירת צוות, כשPM מתקשה, תכנון גיוס, הצגה לבורד
הפעלה: ב-Settings.md — שנו team_mode: solo ל-team_mode: lead.

ייצוא ל-PDF בלי Obsidian

אם אתם רוצים לייצא קובץ מ-AI-SHIPR ל-PDF בלי לפתוח את Obsidian — אפשר עם Pandoc.

התקנה (פעם אחת):

brew install pandoc
brew install --cask basictex

ייצוא:

pandoc "path/to/file.md" -o "output.pdf"

זה עובד על כל קובץ במערכת — PRD, סיכום ספרינט, עדכון סטייקהולדרים, כל דבר.

דוגמה מעשית — Duolingo

הוספתי למערכת קובץ דוגמה חדש: duolingo-example-worksheet.md.

הקובץ מראה איך נראה AI-SHIPR אחרי הגדרה מלאה — עם חברה אמיתית וידועה. הוא כולל:

Vision ו-What we will NOT do
North Star Metric ו-3 מטריקות תומכות עם מספרים
3 Strategic Bets מפורטים
PM Profile עם אתגרים אמיתיים
דוגמה ל-Learning.md עם תובנה מופשטת לכלל
השתמשו בו כהפניה בזמן שאתם ממלאים את הקבצים שלכם.

בשבועות הקרובים:

מדריך שימוש בסקילים (מה כל סקיל עושה ומתי להריץ אותו)
סקילים לבניית פרזנטציות
יניב