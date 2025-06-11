import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
// Web için ek importlar
import 'dart:ui' as ui;
import 'dart:html' as html;

class ImageViewerPage extends StatelessWidget {
  final String? url;
  const ImageViewerPage({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (kIsWeb && url != null) {
      final viewID = 'iframe_${url.hashCode}';
      // ignore: undefined_prefixed_name
      ui.platformViewRegistry.registerViewFactory(
        viewID,
        (int viewId) =>
            html.IFrameElement()
              ..src = url!
              ..style.border = 'none'
              ..width = '100%'
              ..height = '100%',
      );
      return Scaffold(
        appBar: AppBar(title: const Text('Görsel Görüntüleyici')),
        body: HtmlElementView(viewType: viewID),
      );
    } else {
      return Scaffold(
        appBar: AppBar(title: const Text('Görsel Görüntüleyici')),
        body:
            url == null
                ? const Center(child: Text('Görsel bulunamadı'))
                : InteractiveViewer(child: Center(child: Image.network(url!))),
      );
    }
  }
}
