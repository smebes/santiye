import '../models/file_entry.dart';

class MockDataService {
  static List<FileEntry> getMainFolders() {
    return [
      FileEntry(
        name: 'GÖRSELLER',
        isDirectory: true,
        modifiedDate: DateTime.now().subtract(const Duration(days: 2)),
        rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
        rolesWithEditAccess: ['admin', 'engineer'],
        rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
        path: '/gorseller',
      ),
      FileEntry(
        name: 'İHALE DOKÜMANI',
        isDirectory: true,
        modifiedDate: DateTime.now().subtract(const Duration(days: 5)),
        rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
        rolesWithEditAccess: ['admin'],
        rolesWithDownloadAccess: ['admin', 'engineer'],
        path: '/ihale-dokumani',
      ),
      FileEntry(
        name: 'HAKEDİŞLER',
        isDirectory: true,
        modifiedDate: DateTime.now().subtract(const Duration(days: 1)),
        rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
        rolesWithEditAccess: ['admin', 'engineer'],
        rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
        path: '/hakedisler',
      ),
      FileEntry(
        name: 'KABUL TUTANAKLARI',
        isDirectory: true,
        modifiedDate: DateTime.now().subtract(const Duration(hours: 12)),
        rolesWithViewAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
        rolesWithEditAccess: ['admin', 'engineer'],
        rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
        path: '/kabul-tutanaklari',
      ),
      FileEntry(
        name: 'MALZEME ONAYLARI',
        isDirectory: true,
        modifiedDate: DateTime.now().subtract(const Duration(days: 3)),
        rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
        rolesWithEditAccess: ['admin', 'engineer'],
        rolesWithDownloadAccess: ['admin', 'engineer'],
        path: '/malzeme-onaylari',
      ),
      FileEntry(
        name: 'PROJELER – EKSİK',
        isDirectory: true,
        modifiedDate: DateTime.now().subtract(const Duration(days: 7)),
        rolesWithViewAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
        rolesWithEditAccess: ['admin', 'engineer'],
        rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
        path: '/projeler-eksik',
      ),
      FileEntry(
        name: 'SÖZLEŞME',
        isDirectory: true,
        modifiedDate: DateTime.now().subtract(const Duration(days: 10)),
        rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
        rolesWithEditAccess: ['admin'],
        rolesWithDownloadAccess: ['admin', 'engineer'],
        path: '/sozlesme',
      ),
      FileEntry(
        name: 'TESLİM TUTANAKLARI',
        isDirectory: true,
        modifiedDate: DateTime.now().subtract(const Duration(days: 4)),
        rolesWithViewAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
        rolesWithEditAccess: ['admin', 'engineer'],
        rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
        path: '/teslim-tutanaklari',
      ),
      FileEntry(
        name: 'YAZIŞMALAR',
        isDirectory: true,
        modifiedDate: DateTime.now().subtract(const Duration(hours: 6)),
        rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
        rolesWithEditAccess: ['admin', 'engineer'],
        rolesWithDownloadAccess: ['admin', 'engineer', 'idari_personel'],
        path: '/yazismalar',
      ),
      FileEntry(
        name: 'İSG',
        isDirectory: true,
        modifiedDate: DateTime.now().subtract(const Duration(days: 1)),
        rolesWithViewAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
        rolesWithEditAccess: ['admin', 'engineer'],
        rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
        path: '/isg',
      ),
      FileEntry(
        name: 'İŞ PROGRAMI',
        isDirectory: true,
        modifiedDate: DateTime.now().subtract(const Duration(days: 2)),
        rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
        rolesWithEditAccess: ['admin', 'engineer'],
        rolesWithDownloadAccess: ['admin', 'engineer'],
        path: '/is-programi',
      ),
      FileEntry(
        name: 'ŞİKAYETLERİN GİDERİLMESİ',
        isDirectory: true,
        modifiedDate: DateTime.now().subtract(const Duration(hours: 3)),
        rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
        rolesWithEditAccess: ['admin', 'engineer'],
        rolesWithDownloadAccess: ['admin', 'engineer'],
        path: '/sikayetlerin-giderilmesi',
      ),
    ];
  }

  static List<FileEntry> getFolderContents(String folderPath) {
    switch (folderPath) {
      case '/gorseller':
        return [
          FileEntry(
            name: 'Şantiye_Görsel_1.jpg',
            isDirectory: false,
            modifiedDate: DateTime.now().subtract(const Duration(days: 1)),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/gorseller/santiye_gorsel_1.jpg',
            size: '2.5 MB',
            extension: 'jpg',
          ),
          FileEntry(
            name: 'Proje_Planı.pdf',
            isDirectory: false,
            modifiedDate: DateTime.now().subtract(const Duration(days: 2)),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/gorseller/proje_plani.pdf',
            size: '1.8 MB',
            extension: 'pdf',
          ),
        ];
      case '/hakedisler':
        return [
          FileEntry(
            name: '1._Hakediş_Raporu.xlsx',
            isDirectory: false,
            modifiedDate: DateTime.now().subtract(const Duration(hours: 6)),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/hakedisler/1_hakedis_raporu.xlsx',
            size: '856 KB',
            extension: 'xlsx',
          ),
          FileEntry(
            name: '2._Hakediş_Özeti.pdf',
            isDirectory: false,
            modifiedDate: DateTime.now().subtract(const Duration(days: 1)),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/hakedisler/2_hakedis_ozeti.pdf',
            size: '1.2 MB',
            extension: 'pdf',
          ),
        ];
      default:
        return [
          FileEntry(
            name: 'Örnek_Dosya.pdf',
            isDirectory: false,
            modifiedDate: DateTime.now(),
            rolesWithViewAccess: ['admin', 'engineer'],
            rolesWithEditAccess: ['admin'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '$folderPath/ornek_dosya.pdf',
            size: '500 KB',
            extension: 'pdf',
          ),
        ];
    }
  }

  static List<String> getAvailableRoles() {
    return ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi', 'guest'];
  }

  static Map<String, String> getRoleDisplayNames() {
    return {
      'admin': 'Sistem Yöneticisi',
      'engineer': 'Şantiye Mühendisi',
      'idari_personel': 'İdari Personel',
      'kontrol_mühendisi': 'Kontrol Mühendisi',
      'guest': 'Misafir Kullanıcı',
    };
  }
}
