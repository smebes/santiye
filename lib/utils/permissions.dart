import '../models/file_entry.dart';

class Permissions {
  static bool canView(FileEntry entry, String userRole) {
    return entry.hasViewAccess(userRole);
  }

  static bool canEdit(FileEntry entry, String userRole) {
    return entry.hasEditAccess(userRole);
  }

  static bool canDownload(FileEntry entry, String userRole) {
    return entry.hasDownloadAccess(userRole);
  }

  static String getFileIcon(String? extension) {
    switch (extension?.toLowerCase()) {
      case 'pdf':
        return '📄';
      case 'doc':
      case 'docx':
        return '📝';
      case 'xls':
      case 'xlsx':
        return '📊';
      case 'jpg':
      case 'jpeg':
      case 'png':
      case 'gif':
        return '🖼️';
      case 'dwg':
      case 'dxf':
        return '📐';
      case 'zip':
      case 'rar':
        return '📦';
      case 'mp4':
      case 'avi':
      case 'mov':
        return '🎥';
      default:
        return '📄';
    }
  }

  static String getFolderIcon(String folderName) {
    switch (folderName.toLowerCase()) {
      case 'görseller':
        return '🖼️';
      case 'ihale_dokumani_2023_226755':
        return '📋';
      case 'hakedişler':
        return '💰';
      case 'kabul tutanakları':
        return '✅';
      case 'malzeme onayları':
        return '🔧';
      case 'projeler - eksik':
        return '📐';
      case 'sözleşme':
        return '📜';
      case 'teslim tutanakları':
        return '📦';
      case 'yazışmalar':
        return '📧';
      case 'isg':
        return '🛡️';
      case 'iş programı':
        return '📅';
      case 'şikayet ve şikayetlerin giderilmesi':
        return '🔧';
      default:
        return '📁';
    }
  }

  static String formatFileSize(String? size) {
    if (size == null) return '';
    return size;
  }

  static String formatDate(DateTime date) {
    return '${date.day.toString().padLeft(2, '0')}.${date.month.toString().padLeft(2, '0')}.${date.year}';
  }

  static String formatDateTime(DateTime date) {
    return '${formatDate(date)} ${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}';
  }

  static String getProjectTitle() {
    return 'ERENSAN ÖZPOLAT - GAZİANTEP İLİ NURDAĞI İLÇESİ BAŞPINAR MAH. 2.ETAP 479AD KONUT İNŞAATI';
  }

  static String getProjectShortTitle() {
    return 'ERENSAN ÖZPOLAT - GAZİANTEP KONUT İNŞAATI';
  }
}
