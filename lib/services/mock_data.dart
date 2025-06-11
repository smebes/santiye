import '../models/file_entry.dart';

class MockDataService {
  static List<FileEntry> getMainFolders() {
    return [
      FileEntry(
        name: 'GÖRSELLER',
        isDirectory: true,
        modifiedDate: DateTime(2023, 9, 11, 10, 57),
        rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
        rolesWithEditAccess: ['admin', 'engineer'],
        rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
        path: '/gorseller',
      ),
      FileEntry(
        name: 'ihale_dokumani_2023_226755',
        isDirectory: true,
        modifiedDate: DateTime(2023, 8, 6, 13, 27),
        rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
        rolesWithEditAccess: ['admin'],
        rolesWithDownloadAccess: ['admin', 'engineer'],
        path: '/ihale-dokumani',
      ),
      FileEntry(
        name: 'HAKEDİŞLER',
        isDirectory: true,
        modifiedDate: DateTime(2024, 11, 11, 15, 38),
        rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
        rolesWithEditAccess: ['admin', 'engineer'],
        rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
        path: '/hakedisler',
      ),
      FileEntry(
        name: 'KABUL TUTANAKLARI',
        isDirectory: true,
        modifiedDate: DateTime(2024, 9, 4, 13, 42),
        rolesWithViewAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
        rolesWithEditAccess: ['admin', 'engineer'],
        rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
        path: '/kabul-tutanaklari',
      ),
      FileEntry(
        name: 'MALZEME ONAYLARI',
        isDirectory: true,
        modifiedDate: DateTime(2024, 1, 3, 14, 4),
        rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
        rolesWithEditAccess: ['admin', 'engineer'],
        rolesWithDownloadAccess: ['admin', 'engineer'],
        path: '/malzeme-onaylari',
      ),
      FileEntry(
        name: 'PROJELER - EKSİK',
        isDirectory: true,
        modifiedDate: DateTime(2025, 3, 23, 1, 59),
        rolesWithViewAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
        rolesWithEditAccess: ['admin', 'engineer'],
        rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
        path: '/projeler-eksik',
      ),
      FileEntry(
        name: 'SÖZLEŞME',
        isDirectory: true,
        modifiedDate: DateTime(2023, 7, 27, 8, 53),
        rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
        rolesWithEditAccess: ['admin'],
        rolesWithDownloadAccess: ['admin', 'engineer'],
        path: '/sozlesme',
      ),
      FileEntry(
        name: 'TESLİM TUTANAKLARI',
        isDirectory: true,
        modifiedDate: DateTime(2023, 7, 27, 8, 54),
        rolesWithViewAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
        rolesWithEditAccess: ['admin', 'engineer'],
        rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
        path: '/teslim-tutanaklari',
      ),
      FileEntry(
        name: 'YAZIŞMALAR',
        isDirectory: true,
        modifiedDate: DateTime(2023, 6, 5, 10, 6),
        rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
        rolesWithEditAccess: ['admin', 'engineer'],
        rolesWithDownloadAccess: ['admin', 'engineer', 'idari_personel'],
        path: '/yazismalar',
      ),
      FileEntry(
        name: 'İSG',
        isDirectory: true,
        modifiedDate: DateTime(2021, 5, 18, 17, 56),
        rolesWithViewAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
        rolesWithEditAccess: ['admin', 'engineer'],
        rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
        path: '/isg',
      ),
      FileEntry(
        name: 'İŞ PROGRAMI',
        isDirectory: true,
        modifiedDate: DateTime(2023, 7, 27, 17, 32),
        rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
        rolesWithEditAccess: ['admin', 'engineer'],
        rolesWithDownloadAccess: ['admin', 'engineer'],
        path: '/is-programi',
      ),
      FileEntry(
        name: 'ŞİKAYET VE ŞİKAYETLERİN GİDERİLMESİ',
        isDirectory: true,
        modifiedDate: DateTime(2023, 6, 5, 10, 6),
        rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
        rolesWithEditAccess: ['admin', 'engineer'],
        rolesWithDownloadAccess: ['admin', 'engineer'],
        path: '/sikayet-giderilmesi',
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
            modifiedDate: DateTime(2023, 9, 11, 10, 57),
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
            modifiedDate: DateTime(2023, 9, 10, 15, 30),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/gorseller/proje_plani.pdf',
            size: '1.8 MB',
            extension: 'pdf',
          ),
          FileEntry(
            name: 'İnşaat_Süreci.mp4',
            isDirectory: false,
            modifiedDate: DateTime(2023, 9, 8, 12, 45),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/gorseller/insaat_sureci.mp4',
            size: '15.2 MB',
            extension: 'mp4',
          ),
        ];
      case '/hakedisler':
        return [
          FileEntry(
            name: '1._Hakediş_Raporu.xlsx',
            isDirectory: false,
            modifiedDate: DateTime(2024, 11, 11, 15, 38),
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
            modifiedDate: DateTime(2024, 11, 10, 14, 20),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/hakedisler/2_hakedis_ozeti.pdf',
            size: '1.2 MB',
            extension: 'pdf',
          ),
          FileEntry(
            name: 'Hakediş_Detay_Raporu.docx',
            isDirectory: false,
            modifiedDate: DateTime(2024, 11, 9, 9, 15),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/hakedisler/hakedis_detay_raporu.docx',
            size: '2.1 MB',
            extension: 'docx',
          ),
        ];
      case '/kabul-tutanaklari':
        return [
          FileEntry(
            name: 'Kabul_Tutanak_2024_09.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2024, 9, 4, 13, 42),
            rolesWithViewAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/kabul-tutanaklari/kabul_tutanak_2024_09.pdf',
            size: '3.4 MB',
            extension: 'pdf',
          ),
          FileEntry(
            name: 'Kabul_Listesi.xlsx',
            isDirectory: false,
            modifiedDate: DateTime(2024, 9, 3, 16, 30),
            rolesWithViewAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/kabul-tutanaklari/kabul_listesi.xlsx',
            size: '1.8 MB',
            extension: 'xlsx',
          ),
        ];
      case '/malzeme-onaylari':
        return [
          FileEntry(
            name: 'Malzeme_Onay_2024_01.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2024, 1, 3, 14, 4),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/malzeme-onaylari/malzeme_onay_2024_01.pdf',
            size: '2.7 MB',
            extension: 'pdf',
          ),
          FileEntry(
            name: 'Malzeme_Listesi.xlsx',
            isDirectory: false,
            modifiedDate: DateTime(2024, 1, 2, 11, 25),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/malzeme-onaylari/malzeme_listesi.xlsx',
            size: '1.1 MB',
            extension: 'xlsx',
          ),
        ];
      case '/projeler-eksik':
        return [
          FileEntry(
            name: 'Proje_Revizyon_2025.dwg',
            isDirectory: false,
            modifiedDate: DateTime(2025, 3, 23, 1, 59),
            rolesWithViewAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/projeler-eksik/proje_revizyon_2025.dwg',
            size: '8.5 MB',
            extension: 'dwg',
          ),
          FileEntry(
            name: 'Eksik_Projeler_Listesi.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2025, 3, 22, 18, 30),
            rolesWithViewAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/projeler-eksik/eksik_projeler_listesi.pdf',
            size: '1.9 MB',
            extension: 'pdf',
          ),
        ];
      case '/sozlesme':
        return [
          FileEntry(
            name: 'İnşaat_Sözleşmesi.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2023, 7, 27, 8, 53),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/sozlesme/insaat_sozlesmesi.pdf',
            size: '5.2 MB',
            extension: 'pdf',
          ),
          FileEntry(
            name: 'Sözleşme_Ekleri.zip',
            isDirectory: false,
            modifiedDate: DateTime(2023, 7, 26, 15, 20),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/sozlesme/sozlesme_ekleri.zip',
            size: '12.8 MB',
            extension: 'zip',
          ),
        ];
      case '/teslim-tutanaklari':
        return [
          FileEntry(
            name: 'Teslim_Tutanak_2023.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2023, 7, 27, 8, 54),
            rolesWithViewAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/teslim-tutanaklari/teslim_tutanak_2023.pdf',
            size: '2.3 MB',
            extension: 'pdf',
          ),
        ];
      case '/yazismalar':
        return [
          FileEntry(
            name: 'Yazışma_2023_06.docx',
            isDirectory: false,
            modifiedDate: DateTime(2023, 6, 5, 10, 6),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'idari_personel'],
            path: '/yazismalar/yazisma_2023_06.docx',
            size: '1.5 MB',
            extension: 'docx',
          ),
          FileEntry(
            name: 'Resmi_Yazışmalar.xlsx',
            isDirectory: false,
            modifiedDate: DateTime(2023, 6, 4, 14, 30),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'idari_personel'],
            path: '/yazismalar/resmi_yazismalar.xlsx',
            size: '2.8 MB',
            extension: 'xlsx',
          ),
        ];
      case '/isg':
        return [
          FileEntry(
            name: 'İSG_Planı_2021.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2021, 5, 18, 17, 56),
            rolesWithViewAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/isg/isg_plani_2021.pdf',
            size: '4.1 MB',
            extension: 'pdf',
          ),
          FileEntry(
            name: 'Güvenlik_Raporu.docx',
            isDirectory: false,
            modifiedDate: DateTime(2021, 5, 17, 12, 45),
            rolesWithViewAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/isg/guvenlik_raporu.docx',
            size: '3.2 MB',
            extension: 'docx',
          ),
        ];
      case '/is-programi':
        return [
          FileEntry(
            name: 'İş_Programı_2023.xlsx',
            isDirectory: false,
            modifiedDate: DateTime(2023, 7, 27, 17, 32),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/is-programi/is_programi_2023.xlsx',
            size: '2.9 MB',
            extension: 'xlsx',
          ),
          FileEntry(
            name: 'Gantt_Şeması.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2023, 7, 26, 10, 15),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/is-programi/gantt_semasi.pdf',
            size: '1.7 MB',
            extension: 'pdf',
          ),
        ];
      case '/sikayet-giderilmesi':
        return [
          FileEntry(
            name: 'Şikayet_Raporu_2023.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2023, 6, 5, 10, 6),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/sikayet-giderilmesi/sikayet_raporu_2023.pdf',
            size: '2.1 MB',
            extension: 'pdf',
          ),
          FileEntry(
            name: 'Çözüm_Önerileri.docx',
            isDirectory: false,
            modifiedDate: DateTime(2023, 6, 4, 16, 20),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/sikayet-giderilmesi/cozum_onerileri.docx',
            size: '1.8 MB',
            extension: 'docx',
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
