#!/bin/bash

# Systemd service configuration
SERVICE_NAME="santiye-app"
SERVICE_FILE="/etc/systemd/system/${SERVICE_NAME}.service"
APP_DIR="$(pwd)"
USER=$(whoami)

echo "🔧 Systemd Service Oluşturuluyor..."

# Create systemd service file
sudo tee $SERVICE_FILE > /dev/null <<EOF
[Unit]
Description=Şantiye Belge Sistemi
After=network.target docker.service
Requires=docker.service

[Service]
Type=simple
User=$USER
WorkingDirectory=$APP_DIR
ExecStart=$APP_DIR/screen-run.sh
ExecStop=$APP_DIR/screen-manage.sh stop
Restart=always
RestartSec=10
StandardOutput=journal
StandardError=journal

[Install]
WantedBy=multi-user.target
EOF

# Reload systemd
sudo systemctl daemon-reload

# Enable service
sudo systemctl enable $SERVICE_NAME

echo "✅ Systemd service oluşturuldu!"
echo ""
echo "📋 Servis Komutları:"
echo "   Başlat: sudo systemctl start $SERVICE_NAME"
echo "   Durdur: sudo systemctl stop $SERVICE_NAME"
echo "   Yeniden başlat: sudo systemctl restart $SERVICE_NAME"
echo "   Durum: sudo systemctl status $SERVICE_NAME"
echo "   Loglar: sudo journalctl -u $SERVICE_NAME -f"
echo "   Otomatik başlatma: sudo systemctl enable $SERVICE_NAME"
echo ""
echo "🌐 Uygulama erişimi:"
echo "   http://$(hostname -I | awk '{print $1}'):80" 