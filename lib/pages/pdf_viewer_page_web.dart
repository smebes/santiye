import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'dart:html' as html;
import 'package:flutter/foundation.dart' show kIsWeb;

class PlatformPdfViewer extends StatelessWidget {
  final String? url;
  const PlatformPdfViewer({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (url == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('PDF Görüntüleyici')),
        body: const Center(child: Text('PDF bulunamadı')),
      );
    }

    if (!kIsWeb) {
      return Scaffold(
        appBar: AppBar(title: const Text('PDF Görüntüleyici')),
        body: const Center(child: Text('PDF görüntüleme sadece web platformunda desteklenir')),
      );
    }

    final viewID = 'pdf_iframe_${url.hashCode}';

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
      appBar: AppBar(title: const Text('PDF Görüntüleyici')),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey[50],
        child: HtmlElementView(viewType: viewID),
      ),
    );
  }
}
