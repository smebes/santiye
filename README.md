📂 Proje Adı: Kurum İçi Belge Takip ve Yetkilendirme Sistemi


http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI/
bu sitedeki arayüzü daha güzel bir keilde sunalım
verileri burdan al ve responsive tasatım ile göster
bunların iç sayfalarında gelecek kısımları da aynı şekilde
⸻

🎯 Amaç:

Kurum içi inşaat projeleri ve kamu ihalelerine ait klasör ve belgelerin kullanıcı rollerine göre erişim, görüntüleme, indirme ve düzenleme yetkileriyle yönetilmesini sağlayan, Flutter Web tabanlı modern ve kullanıcı dostu bir sistem geliştirilmesidir. Sistem özellikle yapı denetim, ihale takibi, şantiye süreçleri gibi proje odaklı dokümantasyon ihtiyacına yanıt verir.

⸻

🧩 Hedef Platformlar:
	•	📱 Mobil (Responsive Web)
	•	💻 Web (masaüstü ve tablet destekli)

Not: Proje Flutter ile geliştirilmiştir, Material 3 temasını destekler.

⸻

👥 Kullanıcı Rolleri ve Yetkiler

Rol	Açıklama	Erişim Yetkileri
admin	Tüm yetkilere sahip sistem yöneticisi	Görüntüle, İndir, Düzenle, Yetki Tanımla
engineer	Şantiye mühendisi / uygulayıcı	Görüntüle, İndir (bazı klasörlerde)
idari_personel	Ofis çalışanı	Görüntüle, Sadece belirli belgeleri indir
kontrol_mühendisi	Dış denetçi veya kontrol uzmanı	Görüntüle, İndir
guest	Misafir kullanıcı (görüntüleme izni sınırlı)	Sadece bazı klasörleri görüntüleyebilir


⸻

🗂️ Klasör/Dosya Yapısı

Projeye ait dosya yapısı sabit bir kaynak sistemden (örnek: desis.prokon.com.tr) modellenmiş olup, aşağıdaki klasör başlıkları içerir:
	•	GÖRSELLER
	•	İHALE DOKÜMANI
	•	HAKEDİŞLER
	•	KABUL TUTANAKLARI
	•	MALZEME ONAYLARI
	•	PROJELER – EKSİK
	•	SÖZLEŞME
	•	TESLİM TUTANAKLARI
	•	YAZIŞMALAR
	•	İSG
	•	İŞ PROGRAMI
	•	ŞİKAYETLERİN GİDERİLMESİ

Her klasör, altında tarihsel veya tematik olarak gruplanmış .pdf, .docx, .xlsx gibi dosyaları içerir.

⸻

🖥️ Ekranlar ve Arayüz

1. Giriş Ekranı (LoginPage)
	•	Kullanıcı adı (opsiyonel)
	•	Rol seçimi (dropdown)
	•	Devam butonu → yönlendirme

2. Belge Dashboard’u (DocumentDashboard)
	•	Sol navigasyon: Klasör kategorileri (grid yapısında)
	•	Her klasör bir “Card” bileşeni ile gösterilir
	•	Klasöre tıklandığında detay sayfasına geçilir

3. Klasör Detay Sayfası (FolderContentsPage)
	•	Dosya listesi (tarih, ad, ikon)
	•	Eylemler: Görüntüle | İndir | Düzenle
	•	Her dosyada yetki kontrolü çalışır

4. Yetki Paneli (sadece admin)
	•	Dosya/klasör bazlı yetki atama
	•	Her rol için checkbox ile:
	•	👁️ Görüntüleme
	•	✏️ Düzenleme
	•	⬇️ İndirme

⸻

🔐 Yetkilendirme Yapısı

Her FileEntry veya klasör nesnesi şu bilgileri içerir:

{
  "name": "HAKEDİŞLER",
  "isDirectory": true,
  "modifiedDate": "2024-11-11T15:38:00",
  "rolesWithViewAccess": ["admin", "engineer"],
  "rolesWithEditAccess": ["admin"],
  "rolesWithDownloadAccess": ["admin", "kontrol_mühendisi"]
}


⸻

⚙️ Teknik Mimarisi

Bileşen	Açıklama
Flutter	Arayüz geliştirme (Material 3 destekli)
Provider veya Riverpod	State yönetimi
Mock JSON	Simülasyon için veri kaynağı
GridView.builder	Klasörleri grid halinde listeleme
TextField, DropdownButton	Giriş ekranı için
SnackBar	İşlem geri bildirimi
Gelecek adımlar	Firebase Storage veya Amazon S3 entegrasyonu


⸻

🧱 Proje Yapılandırması

/lib
├── main.dart
├── models/
│   └── file_entry.dart
├── pages/
│   ├── login_page.dart
│   ├── document_dashboard.dart
│   ├── folder_contents_page.dart
│   └── access_control_page.dart
├── widgets/
│   ├── folder_card.dart
│   └── file_card.dart
├── services/
│   └── mock_data.dart
├── utils/
│   └── permissions.dart


⸻

🚀 Özellik Seti (İlk Aşama)
	•	Rol bazlı giriş
	•	Klasör görünümü
	•	Dosya yetki kontrolü
	•	Responsive tasarım
	•	Görsel ve sade UI
	•	Gerçek dosya sistemine bağlanma
	•	Dosya yükleme
	•	Gelişmiş arama ve filtre

⸻

🎨 UX & UI Notları
	•	Kart yapısı: Yumuşak köşeler (rounded), ikonlu, hover animasyonlu
	•	Temalar: Açık/Koyu destekli (şirket rengine göre özelleştirilebilir)
	•	Mobil destekli: Klasörler ve dosyalar dikey sıralanır
	•	Butonlar: Büyük ve dokunmatik için uygun

⸻

🔮 Gelecekte Eklenebilir Modüller
	•	🔁 Belge versiyon kontrolü
	•	📝 Belge yorumlama (annotasyon)
	•	📬 Bildirim ve görev atama
	•	🗓️ Zaman çizelgesi ve klasör güncelleme geçmişi
	•	📈 Yetki bazlı kullanım istatistikleri

⸻
