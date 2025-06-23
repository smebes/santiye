import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'dart:html' as html;
import 'package:flutter/foundation.dart' show kIsWeb;

class PlatformImageViewer extends StatelessWidget {
  final String? url;
  const PlatformImageViewer({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (url == null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Görsel Görüntüleyici'),
          backgroundColor: Colors.blue[50],
          elevation: 2,
        ),
        body: const Center(child: Text('Görsel bulunamadı')),
      );
    }

    if (!kIsWeb) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Görsel Görüntüleyici'),
          backgroundColor: Colors.blue[50],
          elevation: 2,
        ),
        body: const Center(child: Text('Görsel görüntüleme sadece web platformunda desteklenir')),
      );
    }

    // Basit HTML viewer oluştur
    final viewID = 'image_viewer_${url.hashCode}';

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      viewID,
      (int viewId) {
        final div = html.DivElement()
          ..style.width = '100%'
          ..style.height = '100%'
          ..style.display = 'flex'
          ..style.justifyContent = 'center'
          ..style.alignItems = 'center'
          ..style.backgroundColor = '#f5f5f5';

        final img = html.ImageElement()
          ..src = url!
          ..style.maxWidth = '100%'
          ..style.maxHeight = '100%'
          ..style.objectFit = 'contain'
          ..style.borderRadius = '8px'
          ..style.boxShadow = '0 4px 8px rgba(0,0,0,0.1)';

        // Hata durumunda
        img.onError.listen((event) {
          final errorDiv = html.DivElement()
            ..style.textAlign = 'center'
            ..style.color = '#666'
            ..style.fontFamily = 'Arial, sans-serif';

          errorDiv.children.add(html.HeadingElement.h3()..text = 'Görsel yüklenemedi');
          errorDiv.children.add(html.ParagraphElement()..text = 'URL: $url');

          final backButton = html.ButtonElement()
            ..text = 'Geri Dön'
            ..style.padding = '10px 20px'
            ..style.background = '#007bff'
            ..style.color = 'white'
            ..style.border = 'none'
            ..style.borderRadius = '5px'
            ..style.cursor = 'pointer';

          backButton.onClick.listen((event) => html.window.history.back());
          errorDiv.children.add(backButton);

          div.children.clear();
          div.children.add(errorDiv);
        });

        div.children.add(img);
        return div;
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Görsel Görüntüleyici'),
        backgroundColor: Colors.blue[50],
        elevation: 2,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.open_in_new),
            onPressed: () {
              html.window.open(url!, '_blank');
            },
            tooltip: 'Yeni sekmede aç',
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey[50],
        child: HtmlElementView(viewType: viewID),
      ),
    );
  }
}
