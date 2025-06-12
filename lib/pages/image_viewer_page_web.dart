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
        appBar: AppBar(title: const Text('Görsel Görüntüleyici')),
        body: const Center(child: Text('Görsel bulunamadı')),
      );
    }

    if (!kIsWeb) {
      return Scaffold(
        appBar: AppBar(title: const Text('Görsel Görüntüleyici')),
        body: const Center(child: Text('Görsel görüntüleme sadece web platformunda desteklenir')),
      );
    }

    final iframeUrl = 'assets/html/image_viewer.html?url=${Uri.encodeComponent(url!)}';
    final viewID = 'iframe_${iframeUrl.hashCode}';

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      viewID,
      (int viewId) =>
          html.IFrameElement()
            ..src = iframeUrl
            ..style.border = 'none'
            ..width = '100%'
            ..height = '100%',
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Görsel Görüntüleyici')),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey[50],
        child: HtmlElementView(viewType: viewID),
      ),
    );
  }
}
