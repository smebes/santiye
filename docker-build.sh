#!/bin/bash

echo "🐳 Docker Build Optimizasyonu Başlatılıyor..."

# Build the Docker image
echo "🔨 Docker image oluşturuluyor..."
docker build -t santiye-web:latest .

# Run with optimizations
echo "🚀 Container başlatılıyor..."
docker run -d \
    --name santiye-web \
    --restart unless-stopped \
    --memory=512m \
    --cpus=0.5 \
    -p 80:80 \
    santiye-web:latest

echo "✅ Container başlatıldı!"
echo "🌐 Uygulama: http://localhost"
echo "📊 Durum kontrolü: docker ps"
echo "📋 Loglar: docker logs santiye-web" 