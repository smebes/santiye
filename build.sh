#!/bin/bash

echo "🚀 Flutter Web Build Optimizasyonu Başlatılıyor..."

# Clean previous builds
echo "🧹 Önceki build'ler temizleniyor..."
flutter clean

# Get dependencies
echo "📦 Bağımlılıklar yükleniyor..."
flutter pub get

# Build with optimizations
echo "🔨 Optimize edilmiş build oluşturuluyor..."
flutter build web \
    --release \
    --web-renderer canvaskit \
    --dart-define=FLUTTER_WEB_USE_SKIA=true \
    --tree-shake-icons \
    --no-sound-null-safety \
    --dart-define=FLUTTER_WEB_USE_SKIA=true \
    --dart-define=FLUTTER_WEB_CANVASKIT_URL=/canvaskit/ \
    --base-href /

echo "✅ Build tamamlandı!"
echo "📁 Build dosyaları: build/web/"
echo "🌐 Uygulamayı çalıştırmak için: flutter run -d chrome --release" 