import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';

import 'image_viewer_page_mobile.dart' if (dart.library.html) 'image_viewer_page_web.dart';

class ImageViewerPage extends StatelessWidget {
  final String? url;
  const ImageViewerPage({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformImageViewer(url: url);
  }
}
