import 'dart:html' as html;
import 'package:flutter/foundation.dart' show kIsWeb;

class PlatformUtils {
  static Future<void> downloadFile(String? url, String fileName) async {
    if (kIsWeb && url != null) {
      final anchor =
          html.AnchorElement(href: url)
            ..setAttribute('download', fileName)
            ..click();
    }
  }

  static Future<void> openFile(String? url) async {
    if (kIsWeb && url != null) {
      html.window.open(url, '_blank');
    }
  }
}
