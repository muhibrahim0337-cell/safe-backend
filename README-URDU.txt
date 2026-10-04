Safe Way — Online Backend (PocketBase) — مختصر اردو گائیڈ
=========================================================

اس فولڈر میں آپ کا مکمل backend موجود ہے:
  pocketbase        = ایک ہی فائل والا سرور (ڈیٹا بیس + لاگ ان + فائل اسٹوریج)
  pb_data/          = تیار شدہ ڈیٹا بیس (users, posts, likes, comments, follows)
  start.sh / start.bat = اپنے کمپیوٹر پر چلانے کی فائل
  Dockerfile / render.yaml = مفت ہوسٹ (Render) پر ڈپلائے کرنے کے لیے

پہلے سے بنے ہوئے ایڈمن اکاؤنٹ (admin panel: /_ ):
  ای میل : admin@safeway.app
  پاس ورڈ : SafeWay#2026

(1) اپنے کمپیوٹر پر چلانا (ٹیسٹ کے لیے)
  Windows : start.bat پر ڈبل کلک کریں
  Mac/Linux : ٹرمینل میں -> chmod +x start.sh && ./start.sh
  پھر براؤزر میں کھولیں: http://127.0.0.1:8090/_/

(2) مفت آن لائن ہوسٹ کرنا (Render.com)
  1. render.com پر مفت اکاؤنٹ بنائیں (GitHub سے سائن اپ آسان ہے)
  2. نیا "Web Service" بنائیں اور یہ فولڈر اپلوڈ کریں (یا GitHub repo سے جوڑیں)
  3. Render خود Dockerfile پڑھ لے گا — Start کمانڈ کی ضرورت نہیں
  4. Disk (اسٹوریج) شامل کریں: mount path = /pb/pb_data ، سائز 1GB
  5. ڈپلائے کے بعد آپ کو ایک پبلک لنک ملے گا، مثلاً:
        https://safe-way-backend.onrender.com
  6. ایپ میں جائیں: Settings > Online backend (server) > یہ لنک پیسٹ کریں > Save
  7. "Test connection" دبائیں — جواب آ جائے تو ایپ آن لائن ہے

(3) اہم باتیں
  - ایپ ہوسٹ کیے بغیر بھی چلتی ہے (آف لائن موڈ، ڈیٹا فون میں محفوظ رہتا ہے)۔
  - لنک پیسٹ کرنے کے بعد sign up / login / upload / like / comment / follow
    سب اسی سرور پر محفوظ ہوں گے اور تمام فونز پر sync ہوں گے۔
  - پاس ورڈز ہمیشہ ہیش (bcrypt) شکل میں محفوظ ہوتے ہیں، پلین ٹیکسٹ میں نہیں۔
  - admin@safeway.app کا پاس ورڈ ڈپلائے کے فوراً بعد تبدیل کر لیں۔
