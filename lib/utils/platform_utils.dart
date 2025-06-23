import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:url_launcher/url_launcher.dart';

class PlatformUtils {
  static Future<void> downloadFile(String? url, String fileName) async {
    if (kIsWeb) {
      // Web platformu için
      // Bu kısım web-specific dosyada implement edilecek
    } else {
      // Mobil platformlar için
      if (url != null) {
        try {
          final Uri uri = Uri.parse(url);
          if (await canLaunchUrl(uri)) {
            await launchUrl(uri, mode: LaunchMode.externalApplication);
          }
        } catch (e) {
          // Hata durumunda sadece mesaj göster
        }
      }
    }
  }

  static Future<void> openFile(String? url) async {
    if (url != null) {
      try {
        final Uri uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri, mode: LaunchMode.externalApplication);
        }
      } catch (e) {
        // Hata durumunda sadece mesaj göster
      }
    }
  }
}
