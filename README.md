# 📂 Şantiye Belge Sistemi

Kurum İçi Belge Takip ve Yetkilendirme Sistemi - Flutter Web Uygulaması

## 🎯 Proje Amaç

Bu proje, kurum içi inşaat projeleri ve kamu ihalelerine ait klasör ve belgelerin kullanıcı rollerine göre erişim, görüntüleme, indirme ve düzenleme yetkileriyle yönetilmesini sağlayan, Flutter Web tabanlı modern ve kullanıcı dostu bir sistemdir. Sistem özellikle yapı denetim, ihale takibi, şantiye süreçleri gibi proje odaklı dokümantasyon ihtiyacına yanıt verir.

## 🚀 Özellikler

### ✅ Tamamlanan Özellikler
- **Rol Bazlı Giriş Sistemi**: 5 farklı kullanıcı rolü (admin, engineer, idari_personel, kontrol_mühendisi, guest)
- **Responsive Tasarım**: Mobil, tablet ve masaüstü uyumlu
- **Klasör Görünümü**: Grid yapısında klasör kartları
- **Dosya Yetki Kontrolü**: Her dosya için ayrı yetki kontrolü
- **Modern UI/UX**: Material 3 tasarım sistemi
- **Mock Data Sistemi**: Gerçekçi test verileri

### 🔄 Geliştirilecek Özellikler
- Gerçek dosya sistemine bağlanma
- Dosya yükleme ve düzenleme
- Gelişmiş arama ve filtre
- Belge versiyon kontrolü
- Bildirim sistemi

## 🧩 Hedef Platformlar
- 📱 Mobil (Responsive Web)
- 💻 Web (masaüstü ve tablet destekli)

## 👥 Kullanıcı Rolleri ve Yetkiler

| Rol | Açıklama | Erişim Yetkileri |
|-----|----------|------------------|
| **admin** | Tüm yetkilere sahip sistem yöneticisi | Görüntüle, İndir, Düzenle, Yetki Tanımla |
| **engineer** | Şantiye mühendisi / uygulayıcı | Görüntüle, İndir (bazı klasörlerde) |
| **idari_personel** | Ofis çalışanı | Görüntüle, Sadece belirli belgeleri indir |
| **kontrol_mühendisi** | Dış denetçi veya kontrol uzmanı | Görüntüle, İndir |
| **guest** | Misafir kullanıcı (görüntüleme izni sınırlı) | Sadece bazı klasörleri görüntüleyebilir |

## 🗂️ Klasör/Dosya Yapısı

Sistem aşağıdaki klasör başlıklarını içerir:
- 🖼️ **GÖRSELLER**
- 📋 **İHALE DOKÜMANI**
- 💰 **HAKEDİŞLER**
- ✅ **KABUL TUTANAKLARI**
- 🔧 **MALZEME ONAYLARI**
- 📐 **PROJELER – EKSİK**
- 📜 **SÖZLEŞME**
- 📦 **TESLİM TUTANAKLARI**
- 📧 **YAZIŞMALAR**
- 🛡️ **İSG**
- 📅 **İŞ PROGRAMI**
- 🔧 **ŞİKAYETLERİN GİDERİLMESİ**

## 🖥️ Ekranlar ve Arayüz

### 1. Giriş Ekranı (LoginPage)
- Kullanıcı adı (opsiyonel)
- Rol seçimi (dropdown)
- Devam butonu → yönlendirme

### 2. Belge Dashboard'u (DocumentDashboard)
- Sol navigasyon: Klasör kategorileri (grid yapısında)
- Her klasör bir "Card" bileşeni ile gösterilir
- Klasöre tıklandığında detay sayfasına geçilir

### 3. Klasör Detay Sayfası (FolderContentsPage)
- Dosya listesi (tarih, ad, ikon)
- Eylemler: Görüntüle | İndir | Düzenle
- Her dosyada yetki kontrolü çalışır

## 🔐 Yetkilendirme Yapısı

Her FileEntry veya klasör nesnesi şu bilgileri içerir:

```json
{
  "name": "HAKEDİŞLER",
  "isDirectory": true,
  "modifiedDate": "2024-11-11T15:38:00",
  "rolesWithViewAccess": ["admin", "engineer"],
  "rolesWithEditAccess": ["admin"],
  "rolesWithDownloadAccess": ["admin", "kontrol_mühendisi"]
}
```

## ⚙️ Teknik Mimarisi

| Bileşen | Açıklama |
|---------|----------|
| **Flutter** | Arayüz geliştirme (Material 3 destekli) |
| **Provider** | State yönetimi |
| **Mock JSON** | Simülasyon için veri kaynağı |
| **GridView.builder** | Klasörleri grid halinde listeleme |
| **TextField, DropdownButton** | Giriş ekranı için |
| **SnackBar** | İşlem geri bildirimi |

## 🧱 Proje Yapılandırması

```
/lib
├── main.dart
├── models/
│   ├── file_entry.dart
│   └── user.dart
├── pages/
│   ├── login_page.dart
│   ├── document_dashboard.dart
│   └── folder_contents_page.dart
├── widgets/
│   ├── folder_card.dart
│   └── file_card.dart
├── services/
│   ├── app_state.dart
│   └── mock_data.dart
└── utils/
    └── permissions.dart
```

## 🚀 Kurulum ve Çalıştırma

### Gereksinimler
- Flutter SDK (3.7.2 veya üzeri)
- Dart SDK
- Web tarayıcısı

### Kurulum Adımları

1. **Projeyi klonlayın:**
```bash
git clone <repository-url>
cd santiye
```

2. **Bağımlılıkları yükleyin:**
```bash
flutter pub get
```

3. **Uygulamayı çalıştırın:**
```bash
# Web için
flutter run -d chrome

# Mobil için (emülatör gerekli)
flutter run -d android
flutter run -d ios
```

4. **Tarayıcıda açın:**
```
http://localhost:8080
```

## 🎨 UX & UI Notları

- **Kart yapısı**: Yumuşak köşeler (rounded), ikonlu, hover animasyonlu
- **Temalar**: Açık/Koyu destekli (şirket rengine göre özelleştirilebilir)
- **Mobil destekli**: Klasörler ve dosyalar dikey sıralanır
- **Butonlar**: Büyük ve dokunmatik için uygun
- **Responsive**: Farklı ekran boyutlarına otomatik uyum

## 🔮 Gelecekte Eklenebilir Modüller

- 🔁 **Belge versiyon kontrolü**
- 📝 **Belge yorumlama (annotasyon)**
- 📬 **Bildirim ve görev atama**
- 🗓️ **Zaman çizelgesi ve klasör güncelleme geçmişi**
- 📈 **Yetki bazlı kullanım istatistikleri**
- 🔍 **Gelişmiş arama ve filtreleme**
- 📤 **Dosya yükleme ve düzenleme**
- 🔗 **Gerçek dosya sistemi entegrasyonu**

## 📱 Responsive Tasarım

Uygulama aşağıdaki ekran boyutlarına uyum sağlar:

- **Mobil**: < 600px (2 sütun grid)
- **Tablet**: 600px - 900px (3 sütun grid)
- **Masaüstü**: > 900px (4 sütun grid)

## 🛠️ Geliştirme Notları

- Material 3 tasarım sistemi kullanılmıştır
- Provider state management pattern uygulanmıştır
- Mock data ile gerçekçi test senaryoları sağlanmıştır
- Responsive tasarım için MediaQuery kullanılmıştır
- Türkçe dil desteği eklenmiştir

## 📄 Lisans

Bu proje MIT lisansı altında lisanslanmıştır.

---

**Geliştirici**: AI Assistant  
**Son Güncelleme**: 2024  
**Versiyon**: 1.0.0
