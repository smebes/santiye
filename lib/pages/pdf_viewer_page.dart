import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';

import 'pdf_viewer_page_mobile.dart' if (dart.library.html) 'pdf_viewer_page_web.dart';

class PdfViewerPage extends StatelessWidget {
  final String? url;
  const PdfViewerPage({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformPdfViewer(url: url);
  }
}
