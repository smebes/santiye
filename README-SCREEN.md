# 🖥️ Screen ile Uzak Sunucu Çalıştırma

Bu doküman, Şantiye Belge Sistemi'ni uzak sunucuda `screen` ile sürekli çalışacak şekilde nasıl yapılandıracağınızı açıklar.

## 🎯 Neden Screen?

- **SSH bağlantısı kopsa bile uygulama çalışmaya devam eder**
- **Sunucu yeniden başlatıldığında otomatik başlar**
- **Kolay yönetim ve monitoring**
- **Log takibi ve hata ayıklama**

## 🚀 Hızlı Başlangıç

### 1. Script'leri Çalıştırılabilir Yapın

```bash
chmod +x screen-run.sh screen-manage.sh systemd-service.sh
```

### 2. Uygulamayı Başlatın

```bash
# Screen ile başlat
./screen-manage.sh start

# Durumu kontrol et
./screen-manage.sh status
```

### 3. Erişim

```
🌐 Uygulama: http://SUNUCU_IP:80
```

## 📋 Komut Referansı

### Screen Yönetimi

```bash
# Uygulamayı başlat
./screen-manage.sh start

# Uygulamayı durdur
./screen-manage.sh stop

# Uygulamayı yeniden başlat
./screen-manage.sh restart

# Durumu göster
./screen-manage.sh status

# Logları göster
./screen-manage.sh logs

# Screen session'a bağlan
./screen-manage.sh attach

# Tüm session'ları listele
./screen-manage.sh list

# Yardım
./screen-manage.sh help
```

### Systemd Service (Opsiyonel)

```bash
# Systemd service oluştur
sudo ./systemd-service.sh

# Servisi başlat
sudo systemctl start santiye-app

# Servisi durdur
sudo systemctl stop santiye-app

# Servis durumu
sudo systemctl status santiye-app

# Logları takip et
sudo journalctl -u santiye-app -f
```

## 🔧 Screen Komutları

### Session'a Bağlanma

```bash
# Session'a bağlan
screen -r santiye-app

# Session'dan çık (session çalışmaya devam eder)
# Ctrl+A, sonra D tuşuna bas
```

### Session Yönetimi

```bash
# Tüm session'ları listele
screen -list

# Session'ı sonlandır
screen -S santiye-app -X quit

# Session'ı yeniden adlandır
screen -S santiye-app -X sessionname yeni-isim
```

## 📊 Monitoring ve Loglar

### Durum Kontrolü

```bash
# Uygulama durumu
./screen-manage.sh status

# Docker container durumu
docker-compose ps

# Port durumu
netstat -tuln | grep :80
```

### Log Takibi

```bash
# Screen session logları
./screen-manage.sh logs

# Docker container logları
docker-compose logs -f

# Systemd service logları (eğer kullanılıyorsa)
sudo journalctl -u santiye-app -f
```

## 🛠️ Sorun Giderme

### Uygulama Başlamıyor

```bash
# Screen session'ı kontrol et
screen -list

# Session'a bağlan ve hataları gör
screen -r santiye-app

# Session'ı yeniden başlat
./screen-manage.sh restart
```

### Port Kullanımda

```bash
# Port 80'de ne çalışıyor?
sudo lsof -i :80

# Eski process'i sonlandır
sudo kill -9 PID_NUMARASI
```

### Docker Sorunları

```bash
# Docker container'ları temizle
docker-compose down
docker system prune -f

# Yeniden başlat
./screen-manage.sh restart
```

## 🔄 Otomatik Yeniden Başlatma

Screen session içinde otomatik yeniden başlatma özelliği vardır:

- **Container durduğunda otomatik yeniden başlatır**
- **30 saniyede bir kontrol eder**
- **Hata durumunda log kaydı tutar**

## 📱 Mobil Erişim

Uygulama responsive tasarıma sahip olduğu için mobil cihazlardan da erişilebilir:

```
🌐 Mobil: http://SUNUCU_IP:80
```

## 🔒 Güvenlik

### Firewall Ayarları

```bash
# Port 80'i aç
sudo ufw allow 80

# SSH port'unu aç (22)
sudo ufw allow 22

# Firewall'u etkinleştir
sudo ufw enable
```

### SSL Sertifikası (Opsiyonel)

```bash
# Certbot ile SSL sertifikası
sudo apt-get install certbot python3-certbot-nginx
sudo certbot --nginx -d your-domain.com
```

## 📈 Performans İpuçları

1. **Sunucu kaynakları**: En az 2GB RAM, 1 CPU
2. **Disk alanı**: En az 10GB boş alan
3. **Network**: Stabil internet bağlantısı
4. **Monitoring**: Düzenli log kontrolü

## 🆘 Acil Durum Komutları

```bash
# Tüm screen session'ları sonlandır
pkill screen

# Tüm Docker container'ları durdur
docker-compose down

# Sunucuyu yeniden başlat
sudo reboot

# Yeniden başlatma sonrası
./screen-manage.sh start
```

## 📞 Destek

Sorun yaşarsanız:

1. `./screen-manage.sh status` ile durumu kontrol edin
2. `./screen-manage.sh logs` ile logları inceleyin
3. `screen -r santiye-app` ile session'a bağlanın
4. Gerekirse `./screen-manage.sh restart` ile yeniden başlatın

---

**Not**: Bu script'ler Ubuntu/Debian tabanlı sistemler için optimize edilmiştir. Farklı Linux dağıtımlarında küçük değişiklikler gerekebilir. 