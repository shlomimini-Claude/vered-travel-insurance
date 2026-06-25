# PROGRESS — מיני-סייט ורד וילדר · ביטוח נסיעות לחו״ל

**עודכן:** 25/06/2026
**סטטוס:** 🟢 גרסה ראשונה חיה באוויר.

## URL
https://vered-travel-insurance.netlify.app
Netlify Project ID: `bee0c931-6c89-40a2-86f1-eb4b153bccb9` (team shlomimini)

## מה נעשה
- דף נחיתה סטטי one-page, RTL, מובייל-first (`index.html`, CSS inline).
- נכסים מקוריים של ורד תחת `assets/` (logo.png, vered.png, page.jpg).
- פלטת מותג שאובה מהלוגו: מרווה #8FA68E / פחם #2C313A / שמנת.
- 3 CTA: וואטסאפ (הודעה מוכנה), חיוג, רכישה בהראל + קישור לאתר. כפתור וואטסאפ צף.
- OG/meta tags לשיתוף יפה בוואטסאפ.
- נבדק בתצוגה מקדימה (מובייל 375 + דסקטופ 1280) — תקין.

## הצעד הבא
1. ⚠️ לקבל משלומי את **קישור הרכישה בהראל** ולהחליף (grep `harel-group.co.il` ב-index.html — 2 מופעים, כרגע placeholder זמני לאתר הראל).
2. אישור ורד על הנוסח.

## איך מריצים מקומית
`python3 -m http.server 4173 --directory .` → http://localhost:4173

## איך פורסים מחדש
`cd ~/repos/vered-travel-insurance && npx netlify-cli deploy --dir . --prod --site bee0c931-6c89-40a2-86f1-eb4b153bccb9`
