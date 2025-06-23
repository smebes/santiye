#!/bin/bash

SESSION_NAME="santiye-app"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

show_help() {
    echo -e "${BLUE}🖥️  Şantiye Screen Yönetim Scripti${NC}"
    echo ""
    echo "Kullanım: $0 [komut]"
    echo ""
    echo "Komutlar:"
    echo -e "  ${GREEN}start${NC}     - Uygulamayı screen ile başlat"
    echo -e "  ${GREEN}stop${NC}      - Uygulamayı durdur"
    echo -e "  ${GREEN}restart${NC}   - Uygulamayı yeniden başlat"
    echo -e "  ${GREEN}status${NC}    - Durumu göster"
    echo -e "  ${GREEN}logs${NC}      - Logları göster"
    echo -e "  ${GREEN}attach${NC}    - Screen session'a bağlan"
    echo -e "  ${GREEN}list${NC}      - Tüm screen session'ları listele"
    echo -e "  ${GREEN}help${NC}      - Bu yardımı göster"
    echo ""
    echo "Örnekler:"
    echo "  $0 start"
    echo "  $0 status"
    echo "  $0 attach"
}

check_session() {
    if screen -list | grep -q "$SESSION_NAME"; then
        return 0
    else
        return 1
    fi
}

start_app() {
    echo -e "${GREEN}🚀 Şantiye uygulaması başlatılıyor...${NC}"
    ./screen-run.sh
}

stop_app() {
    if check_session; then
        echo -e "${YELLOW}🛑 Uygulama durduruluyor...${NC}"
        screen -S $SESSION_NAME -X quit
        docker-compose down
        echo -e "${GREEN}✅ Uygulama durduruldu.${NC}"
    else
        echo -e "${RED}❌ Aktif session bulunamadı.${NC}"
    fi
}

restart_app() {
    echo -e "${YELLOW}🔄 Uygulama yeniden başlatılıyor...${NC}"
    stop_app
    sleep 3
    start_app
}

show_status() {
    echo -e "${BLUE}📊 Şantiye Uygulaması Durumu${NC}"
    echo "================================"
    
    # Screen session status
    if check_session; then
        echo -e "🖥️  Screen Session: ${GREEN}Aktif${NC}"
        echo "   Session: $SESSION_NAME"
    else
        echo -e "🖥️  Screen Session: ${RED}Pasif${NC}"
    fi
    
    # Docker containers status
    echo ""
    echo -e "🐳 Docker Container Durumu:"
    if command -v docker-compose &> /dev/null; then
        docker-compose ps
    else
        echo -e "${RED}❌ Docker Compose bulunamadı${NC}"
    fi
    
    # Port status
    echo ""
    echo -e "🌐 Port Durumu:"
    if netstat -tuln 2>/dev/null | grep -q ":80 "; then
        echo -e "   Port 80: ${GREEN}Açık${NC}"
    else
        echo -e "   Port 80: ${RED}Kapalı${NC}"
    fi
    
    # IP address
    echo ""
    echo -e "🌍 Erişim Bilgileri:"
    echo "   Yerel: http://localhost:80"
    echo "   Uzak: http://$(hostname -I | awk '{print $1}'):80"
}

show_logs() {
    if check_session; then
        echo -e "${BLUE}📋 Screen Session Logları${NC}"
        echo "================================"
        screen -S $SESSION_NAME -X hardcopy /tmp/santiye-screen.log
        tail -f /tmp/santiye-screen.log
    else
        echo -e "${RED}❌ Aktif session bulunamadı.${NC}"
    fi
}

attach_session() {
    if check_session; then
        echo -e "${GREEN}🔗 Session'a bağlanılıyor...${NC}"
        echo "Çıkmak için: Ctrl+A, sonra D"
        screen -r $SESSION_NAME
    else
        echo -e "${RED}❌ Aktif session bulunamadı.${NC}"
    fi
}

list_sessions() {
    echo -e "${BLUE}📋 Tüm Screen Session'ları${NC}"
    echo "================================"
    screen -list
}

# Main script logic
case "$1" in
    start)
        start_app
        ;;
    stop)
        stop_app
        ;;
    restart)
        restart_app
        ;;
    status)
        show_status
        ;;
    logs)
        show_logs
        ;;
    attach)
        attach_session
        ;;
    list)
        list_sessions
        ;;
    help|--help|-h)
        show_help
        ;;
    *)
        echo -e "${RED}❌ Geçersiz komut: $1${NC}"
        echo ""
        show_help
        exit 1
        ;;
esac 