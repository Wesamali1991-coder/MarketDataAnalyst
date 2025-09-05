# Market Data Analyst — Minimal Build Stub

هذه نسخة مبسطة لتجهيز ملف IPA بسرعة.
- ترفع صورة الشارت وتعرض تحليلًا نصيًا تجريبيًا.
- شاشة اشتراك ودردشة تجريبية (بدون دفع/باك-إند).

## البناء محليًا (macOS + Xcode)
```bash
flutter pub get
flutter build ipa --release
```
سيظهر الملف في: `build/ios/ipa/Runner.ipa`

## البناء على Codemagic (بدون ماك)
ارفع المشروع إلى مستودع (GitHub/GitLab/Bitbucket) واستخدم ملف `codemagic.yaml`:
- Workflow: `ios_ipa_unsigned`
- بعد اكتمال البناء، نزّل ملف `Runner.ipa` ووقّعه على جهازك عبر **Sideloadly**.

## التثبيت عبر Sideloadly (توقيع بحساب Apple ID المجاني)
1. افتح Sideloadly واسحب ملف IPA.
2. أدخل Apple ID وكلمة السر (2FA إن لزم).
3. Start → انتظر التثبيت → وثّق الحساب من إعدادات iOS.
> ملاحظة: صلاحية التوقيع المجاني 7 أيام.

## تعديل اسم الباكيج/الأيقونة
- يمكن تعديل اسم التطبيق من `ios/Runner/Info.plist` بعد إنشاء مجلد iOS لأول مرة (Flutter ينشئه تلقائيًا عند البناء).
- استبدل الأيقونة في `assets/icon.png` وأضف حزمة أيقونات لاحقًا إذا رغبت.

موفّق يا وسام 🌟