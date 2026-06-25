# PROGRESS — מיני-סייט ורד וילדר · ביטוח נסיעות לחו״ל

**עודכן:** 25/06/2026
**סטטוס:** 🟢 גרסה ראשונה חיה באוויר.

## URL חי (ראשי)
https://shlomimini-claude.github.io/vered-travel-insurance/  ← GitHub Pages
Repo: https://github.com/shlomimini-Claude/vered-travel-insurance

> Netlify (`vered-travel-insurance.netlify.app`) נזנח — חשבון ה-Netlify חרג ממכסה (`usage_exceeded` → 503).

## מה נעשה
- דף נחיתה סטטי one-page, RTL, מובייל-first (`index.html`, CSS inline).
- נכסים מקוריים של ורד תחת `assets/` (logo.png, vered.png, page.jpg).
- פלטת מותג שאובה מהלוגו: מרווה #8FA68E / פחם #2C313A / שמנת.
- 3 CTA: וואטסאפ (הודעה מוכנה), חיוג, רכישה בהראל + קישור לאתר. כפתור וואטסאפ צף.
- קישור הראל מוטמע: `digital.harel-group.co.il/travel-policy/?guid=bee1d408...&an=95671`.
- OG/meta tags לשיתוף יפה בוואטסאפ.
- נבדק בתצוגה מקדימה (מובייל 375 + דסקטופ 1280) + חי על Pages — תקין.

## הצעד הבא
- אישור ורד על הנוסח/עיצוב לפני הפצה רחבה.
- אופציונלי: דומיין מותאם (CNAME ב-Pages), תמונת OG ממותגת.

## איך מריצים מקומית
`python3 -m http.server 4173 --directory .` → http://localhost:4173

## איך פורסים מחדש
`git add -A && git commit -m "update" && git push` — Pages נבנה אוטומטית מ-main (root).
