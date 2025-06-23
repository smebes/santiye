#!/bin/bash

# Screen session name
SESSION_NAME="santiye-app"
APP_PORT="80"

echo "🖥️  Screen ile Şantiye Uygulaması Başlatılıyor..."

# Check if screen is installed
if ! command -v screen &> /dev/null; then
    echo "❌ Screen yüklü değil. Yükleniyor..."
    if command -v apt-get &> /dev/null; then
        sudo apt-get update && sudo apt-get install -y screen
    elif command -v yum &> /dev/null; then
        sudo yum install -y screen
    else
        echo "❌ Package manager bulunamadı. Screen'i manuel yükleyin."
        exit 1
    fi
fi

# Kill existing session if exists
if screen -list | grep -q "$SESSION_NAME"; then
    echo "🔄 Mevcut session sonlandırılıyor..."
    screen -S $SESSION_NAME -X quit
    sleep 2
fi

# Create new screen session and run the app
echo "🚀 Yeni screen session oluşturuluyor..."
screen -dmS $SESSION_NAME bash -c "
    echo '📦 Flutter bağımlılıkları kontrol ediliyor...'
    flutter pub get
    
    echo '🔨 Production build oluşturuluyor...'
    flutter build web --release --web-renderer canvaskit --tree-shake-icons
    
    echo '🐳 Docker container başlatılıyor...'
    docker-compose down
    docker-compose up -d
    
    echo '✅ Uygulama başlatıldı!'
    echo '🌐 Erişim: http://$(hostname -I | awk '{print $1}'):$APP_PORT'
    echo '📊 Durum: docker-compose ps'
    echo '📋 Loglar: docker-compose logs -f'
    
    # Keep the session alive
    while true; do
        sleep 30
        if ! docker-compose ps | grep -q 'Up'; then
            echo '⚠️  Container durdu, yeniden başlatılıyor...'
            docker-compose up -d
        fi
    done
"

echo "✅ Screen session başlatıldı!"
echo "📋 Session adı: $SESSION_NAME"
echo "🔗 Bağlanmak için: screen -r $SESSION_NAME"
echo "📊 Session listesi: screen -list"
echo "❌ Session sonlandırmak için: screen -S $SESSION_NAME -X quit"
echo ""
echo "🌐 Uygulama erişimi:"
echo "   Yerel: http://localhost:$APP_PORT"
echo "   Uzak: http://$(hostname -I | awk '{print $1}'):$APP_PORT" 