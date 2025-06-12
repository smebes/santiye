import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'dart:html' as html;

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
      body: Center(child: SizedBox(width: 600, height: 400, child: HtmlElementView(viewType: viewID))),
    );
  }
}
