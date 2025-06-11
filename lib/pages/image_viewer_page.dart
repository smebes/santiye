import 'package:flutter/material.dart';

class ImageViewerPage extends StatelessWidget {
  final String? url;
  const ImageViewerPage({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Görsel Görüntüleyici')),
      body:
          url == null
              ? const Center(child: Text('Görsel bulunamadı'))
              : InteractiveViewer(child: Center(child: Image.network(url!))),
    );
  }
}
