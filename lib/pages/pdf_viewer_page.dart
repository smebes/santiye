import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfViewerPage extends StatelessWidget {
  final String? url;
  const PdfViewerPage({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PDF Görüntüleyici')),
      body: url == null ? const Center(child: Text('PDF bulunamadı')) : SfPdfViewer.network(url!),
    );
  }
}
