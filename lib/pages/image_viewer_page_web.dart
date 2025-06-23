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

    final viewID = 'iframe_${url.hashCode}';

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      viewID,
      (int viewId) {
        final iframe = html.IFrameElement()
          ..src = url!
          ..style.border = 'none'
          ..width = '100%'
          ..height = '100%';
        return iframe;
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
