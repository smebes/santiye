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
            name: 'CEPHE RENKLERİ',
            isDirectory: true,
            modifiedDate: DateTime(2023, 9, 11, 10, 57),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/gorseller/cephe-renkleri',
          ),
          FileEntry(
            name: 'Tip-1 (GB)',
            isDirectory: true,
            modifiedDate: DateTime(2023, 8, 6, 13, 31),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/gorseller/tip-1-gb',
          ),
          FileEntry(
            name: 'Tip-2 (DB)',
            isDirectory: true,
            modifiedDate: DateTime(2023, 8, 6, 13, 31),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/gorseller/tip-2-db',
          ),
        ];
      case '/hakedisler':
        return [
          FileEntry(
            name: '1 NOLU HAKEDİŞ.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2023, 10, 18, 12, 2),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/hakedisler/1_nolu_hakedis.pdf',
            size: '11.4 MB',
            extension: 'pdf',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/hakedisler/1_nolu_hakedis.pdf',
          ),
          FileEntry(
            name: '2 NOLU HAKEDİŞ.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2023, 10, 18, 12, 7),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/hakedisler/2_nolu_hakedis.pdf',
            size: '11.4 MB',
            extension: 'pdf',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/hakedisler/2_nolu_hakedis.pdf',
          ),
          FileEntry(
            name: '3 NOLU HAKEDİŞ.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2023, 9, 6, 10, 9),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/hakedisler/3_nolu_hakedis.pdf',
            size: '17.9 MB',
            extension: 'pdf',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/hakedisler/3_nolu_hakedis.pdf',
          ),
          FileEntry(
            name: '4 NOLU HAKEDİŞ.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2023, 10, 18, 12, 43),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/hakedisler/4_nolu_hakedis.pdf',
            size: '15.2 MB',
            extension: 'pdf',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/hakedisler/4_nolu_hakedis.pdf',
          ),
          FileEntry(
            name: '5 NOLU HAKEDİŞ.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2023, 8, 4, 12, 10),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/hakedisler/5_nolu_hakedis.pdf',
            size: '14.5 MB',
            extension: 'pdf',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/hakedisler/5_nolu_hakedis.pdf',
          ),
          FileEntry(
            name: '6 NOLU HAKEDİŞ.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2023, 9, 1, 12, 10),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/hakedisler/6_nolu_hakedis.pdf',
            size: '14.0 MB',
            extension: 'pdf',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/hakedisler/6_nolu_hakedis.pdf',
          ),
          FileEntry(
            name: '7 NOLU HAKEDİŞ.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2023, 9, 1, 15, 23),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/hakedisler/7_nolu_hakedis.pdf',
            size: '18.3 MB',
            extension: 'pdf',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/hakedisler/7_nolu_hakedis.pdf',
          ),
          FileEntry(
            name: '8 NOLU HAKEDİŞ.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2023, 9, 1, 11, 55),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/hakedisler/8_nolu_hakedis.pdf',
            size: '16.3 MB',
            extension: 'pdf',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/hakedisler/8_nolu_hakedis.pdf',
          ),
          FileEntry(
            name: '9 NOLU HAKEDİŞ.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2023, 10, 18, 13, 58),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/hakedisler/9_nolu_hakedis.pdf',
            size: '17.6 MB',
            extension: 'pdf',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/hakedisler/9_nolu_hakedis.pdf',
          ),
          FileEntry(
            name: '10 NOLU HAKEDİŞ.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2023, 10, 18, 14, 5),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/hakedisler/10_nolu_hakedis.pdf',
            size: '16.5 MB',
            extension: 'pdf',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/hakedisler/10_nolu_hakedis.pdf',
          ),
          FileEntry(
            name: '11 NOLU HAKEDİŞ.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2023, 10, 18, 14, 12),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/hakedisler/11_nolu_hakedis.pdf',
            size: '16.1 MB',
            extension: 'pdf',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/hakedisler/11_nolu_hakedis.pdf',
          ),
          FileEntry(
            name: '12 NOLU HAKEDİŞ.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2023, 11, 2, 10, 1),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/hakedisler/12_nolu_hakedis.pdf',
            size: '19.4 MB',
            extension: 'pdf',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/hakedisler/12_nolu_hakedis.pdf',
          ),
          FileEntry(
            name: '13 NOLU HAKEDİŞ.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2023, 11, 23, 11, 17),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/hakedisler/13_nolu_hakedis.pdf',
            size: '18.9 MB',
            extension: 'pdf',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/hakedisler/13_nolu_hakedis.pdf',
          ),
          FileEntry(
            name: '14 NOLU HAKEDİŞ.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2023, 11, 30, 13, 54),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/hakedisler/14_nolu_hakedis.pdf',
            size: '17.2 MB',
            extension: 'pdf',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/hakedisler/14_nolu_hakedis.pdf',
          ),
          FileEntry(
            name: '15 NOLU HAKEDİŞ.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2023, 12, 21, 14, 7),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/hakedisler/15_nolu_hakedis.pdf',
            size: '17.6 MB',
            extension: 'pdf',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/hakedisler/15_nolu_hakedis.pdf',
          ),
          FileEntry(
            name: '16 NOLU HAKEDİŞ.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2023, 12, 29, 12, 2),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/hakedisler/16_nolu_hakedis.pdf',
            size: '19.5 MB',
            extension: 'pdf',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/hakedisler/16_nolu_hakedis.pdf',
          ),
          FileEntry(
            name: '17 NOLU HAKEDİŞ.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2024, 1, 25, 17, 12),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/hakedisler/17_nolu_hakedis.pdf',
            size: '17.5 MB',
            extension: 'pdf',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/hakedisler/17_nolu_hakedis.pdf',
          ),
          FileEntry(
            name: '18 NOLU HAKEDİŞ.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2024, 2, 16, 12, 21),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/hakedisler/18_nolu_hakedis.pdf',
            size: '18.3 MB',
            extension: 'pdf',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/hakedisler/18_nolu_hakedis.pdf',
          ),
          FileEntry(
            name: '19 NOLU HAKEDİŞ.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2024, 3, 11, 10, 40),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/hakedisler/19_nolu_hakedis.pdf',
            size: '16.9 MB',
            extension: 'pdf',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/hakedisler/19_nolu_hakedis.pdf',
          ),
          FileEntry(
            name: '20 NOLU HAKEDİŞ.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2024, 3, 22, 9, 4),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/hakedisler/20_nolu_hakedis.pdf',
            size: '18.6 MB',
            extension: 'pdf',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/hakedisler/20_nolu_hakedis.pdf',
          ),
          FileEntry(
            name: '21 NOLU HAKEDİŞ.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2024, 10, 25, 17, 33),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/hakedisler/21_nolu_hakedis.pdf',
            size: '19.1 MB',
            extension: 'pdf',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/hakedisler/21_nolu_hakedis.pdf',
          ),
          FileEntry(
            name: '22 NOLU HAKEDİŞ - İŞ SONU.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2024, 6, 24, 10, 27),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/hakedisler/22_nolu_hakedis_is_sonu.pdf',
            size: '18.6 MB',
            extension: 'pdf',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/hakedisler/22_nolu_hakedis_is_sonu.pdf',
          ),
          FileEntry(
            name: '22EK-1 NOLU HAKEDİŞ.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2024, 11, 11, 14, 17),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/hakedisler/22ek1_nolu_hakedis.pdf',
            size: '24.5 MB',
            extension: 'pdf',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/hakedisler/22ek1_nolu_hakedis.pdf',
          ),
        ];
      case '/gorseller/cephe-renkleri':
        return [
          FileEntry(
            name: '20230726-kahramanmaraş-479konut_1 - Photo.jpg',
            isDirectory: false,
            modifiedDate: DateTime(2023, 7, 26, 3, 23),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/gorseller/cephe-renkleri/20230726-kahramanmaras-479konut_1-photo.jpg',
            size: '912 KB',
            extension: 'jpg',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI/-.GÖRSELLER/CEPHE%20RENKLERİ/20230726-kahramanmaraş-479konut_1%20-%20Photo.jpg',
          ),
          FileEntry(
            name: '20230726-kahramanmaraş-479konut_10 - Foto.jpg',
            isDirectory: false,
            modifiedDate: DateTime(2023, 7, 26, 3, 21),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/gorseller/cephe-renkleri/20230726-kahramanmaras-479konut_10-foto.jpg',
            size: '791 KB',
            extension: 'jpg',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI/-.GÖRSELLER/CEPHE%20RENKLERİ/20230726-kahramanmaraş-479konut_10%20-%20Foto.jpg',
          ),
          // ... Benzer şekilde diğer jpg dosyalarını ekle ...
        ];
      case '/gorseller/tip-1-gb':
        return [
          FileEntry(
            name: 'Görseller (1).jpg',
            isDirectory: false,
            modifiedDate: DateTime(2023, 2, 27, 15, 42),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/gorseller/tip-1-gb/gorseller-1.jpg',
            size: '6.4 MB',
            extension: 'jpg',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI/-.GÖRSELLER/Tip-1%20(GB)/Görseller%20(1).jpg',
          ),
          FileEntry(
            name: 'Görseller (2).jpg',
            isDirectory: false,
            modifiedDate: DateTime(2023, 2, 27, 15, 42),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/gorseller/tip-1-gb/gorseller-2.jpg',
            size: '6.3 MB',
            extension: 'jpg',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI/-.GÖRSELLER/Tip-1%20(GB)/Görseller%20(2).jpg',
          ),
          // ... Benzer şekilde diğer jpg dosyalarını ekle ...
        ];
      case '/gorseller/tip-2-db':
        return [
          FileEntry(
            name: 'Görseller (1).jpg',
            isDirectory: false,
            modifiedDate: DateTime(2023, 2, 27, 15, 42),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/gorseller/tip-2-db/gorseller-1.jpg',
            size: '5.8 MB',
            extension: 'jpg',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI/-.GÖRSELLER/Tip-2%20(DB)/Görseller%20(1).jpg',
          ),
          FileEntry(
            name: 'Görseller (2).jpg',
            isDirectory: false,
            modifiedDate: DateTime(2023, 2, 27, 15, 42),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/gorseller/tip-2-db/gorseller-2.jpg',
            size: '6.2 MB',
            extension: 'jpg',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI/-.GÖRSELLER/Tip-2%20(DB)/Görseller%20(2).jpg',
          ),
          // ... Benzer şekilde diğer jpg dosyalarını ekle ...
        ];
      case '/ihale-dokumani':
        return [
          FileEntry(
            name: '010-İHALE DOSYASI BAŞLIK, İNDEX.doc',
            isDirectory: false,
            modifiedDate: DateTime(2023, 3, 3, 18, 30),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/ihale-dokumani/010_ihale_dosyasi_baslik_index.doc',
            size: '56.5 KB',
            extension: 'doc',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/ihale-dokumani/010_ihale_dosyasi_baslik_index.doc',
          ),
          FileEntry(
            name: '020-İDARİ ŞARTNAME BAŞLIK.doc',
            isDirectory: false,
            modifiedDate: DateTime(2023, 3, 3, 18, 30),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/ihale-dokumani/020_idari_sartname_baslik.doc',
            size: '56.0 KB',
            extension: 'doc',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/ihale-dokumani/020_idari_sartname_baslik.doc',
          ),
          FileEntry(
            name: '030-SÖZLEŞME BAŞLIK.doc',
            isDirectory: false,
            modifiedDate: DateTime(2023, 3, 3, 18, 30),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/ihale-dokumani/030_sozlesme_baslik.doc',
            size: '55.5 KB',
            extension: 'doc',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/ihale-dokumani/030_sozlesme_baslik.doc',
          ),
          FileEntry(
            name: '040-ÖZEL İDARİ VE TEKNİK ŞARTNAME BAŞLIK.doc',
            isDirectory: false,
            modifiedDate: DateTime(2023, 3, 3, 18, 30),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/ihale-dokumani/040_ozel_idari_teknik_sartname_baslik.doc',
            size: '55.5 KB',
            extension: 'doc',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/ihale-dokumani/040_ozel_idari_teknik_sartname_baslik.doc',
          ),
          FileEntry(
            name: '041-ÖZEL İDARİ TEKNİK ŞARTNAME.docx',
            isDirectory: false,
            modifiedDate: DateTime(2023, 3, 3, 18, 39),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/ihale-dokumani/041_ozel_idari_teknik_sartname.docx',
            size: '172.8 KB',
            extension: 'docx',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/ihale-dokumani/041_ozel_idari_teknik_sartname.docx',
          ),
          FileEntry(
            name: '050-MAHAL LİSTESİ BAŞLIK.doc',
            isDirectory: false,
            modifiedDate: DateTime(2023, 3, 3, 18, 30),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/ihale-dokumani/050_mahal_listesi_baslik.doc',
            size: '52.5 KB',
            extension: 'doc',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/ihale-dokumani/050_mahal_listesi_baslik.doc',
          ),
          FileEntry(
            name: '051-KONUT İNŞAAT TEKNİK ŞARTNAMESİ.docx',
            isDirectory: false,
            modifiedDate: DateTime(2023, 2, 27, 13, 23),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/ihale-dokumani/051_konut_insaat_teknik_sartnamesi.docx',
            size: '235.5 KB',
            extension: 'docx',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/ihale-dokumani/051_konut_insaat_teknik_sartnamesi.docx',
          ),
          FileEntry(
            name: '052-ELEKTRİK TEKNİK ŞARTNAME ve MAHAL LİSTESİ.DOC',
            isDirectory: false,
            modifiedDate: DateTime(2023, 3, 3, 18, 39),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/ihale-dokumani/052_elektrik_teknik_sartname_mahal_listesi.doc',
            size: '426.0 KB',
            extension: 'doc',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/ihale-dokumani/052_elektrik_teknik_sartname_mahal_listesi.doc',
          ),
          FileEntry(
            name: '053-KONUT MEKANİK MAHAL LİSTESİ.doc',
            isDirectory: false,
            modifiedDate: DateTime(2023, 3, 3, 18, 39),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/ihale-dokumani/053_konut_mekanik_mahal_listesi.doc',
            size: '146.0 KB',
            extension: 'doc',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/ihale-dokumani/053_konut_mekanik_mahal_listesi.doc',
          ),
          FileEntry(
            name: '054-TERFİ MERKEZİ MEKANİK MAHAL LİSTESİ.docx',
            isDirectory: false,
            modifiedDate: DateTime(2023, 3, 3, 18, 39),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/ihale-dokumani/054_terfi_merkezi_mekanik_mahal_listesi.docx',
            size: '17.1 KB',
            extension: 'docx',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/ihale-dokumani/054_terfi_merkezi_mekanik_mahal_listesi.docx',
          ),
          FileEntry(
            name: '055-PEYZAJ TEKNİK ŞARTNAMESİ.doc',
            isDirectory: false,
            modifiedDate: DateTime(2023, 2, 28, 9, 44),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/ihale-dokumani/055_peyzaj_teknik_sartnamesi.doc',
            size: '734.5 KB',
            extension: 'doc',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/ihale-dokumani/055_peyzaj_teknik_sartnamesi.doc',
          ),
          FileEntry(
            name: '060-ALTYAPI ŞARTNAMESİ BAŞLIK.doc',
            isDirectory: false,
            modifiedDate: DateTime(2023, 3, 3, 18, 31),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/ihale-dokumani/060_altyapi_sartnamesi_baslik.doc',
            size: '56.0 KB',
            extension: 'doc',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/ihale-dokumani/060_altyapi_sartnamesi_baslik.doc',
          ),
          FileEntry(
            name: '061-ALTYAPI GENEL ŞARTNAMESİ.docx',
            isDirectory: false,
            modifiedDate: DateTime(2013, 1, 31, 11, 53),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/ihale-dokumani/061_altyapi_genel_sartnamesi.docx',
            size: '40.9 KB',
            extension: 'docx',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/ihale-dokumani/061_altyapi_genel_sartnamesi.docx',
          ),
          FileEntry(
            name: '070-PROJE ÖZEL TEKNİK ŞART. BAŞLIK.doc',
            isDirectory: false,
            modifiedDate: DateTime(2023, 3, 3, 18, 31),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/ihale-dokumani/070_proje_ozel_teknik_sart_baslik.doc',
            size: '56.5 KB',
            extension: 'doc',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/ihale-dokumani/070_proje_ozel_teknik_sart_baslik.doc',
          ),
          FileEntry(
            name: '071-PROJE ÖZEL TEKNİK ŞARTNAMESİ.docx',
            isDirectory: false,
            modifiedDate: DateTime(2017, 5, 25, 14, 41),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/ihale-dokumani/071_proje_ozel_teknik_sartnamesi.docx',
            size: '93.2 KB',
            extension: 'docx',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/ihale-dokumani/071_proje_ozel_teknik_sartnamesi.docx',
          ),
          FileEntry(
            name: '2023-226755_idari_sartname.doc',
            isDirectory: false,
            modifiedDate: DateTime(2023, 3, 3, 18, 48),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/ihale-dokumani/2023_226755_idari_sartname.doc',
            size: '137.9 KB',
            extension: 'doc',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/ihale-dokumani/2023_226755_idari_sartname.doc',
          ),
          FileEntry(
            name: '2023-226755_sozlesme_tasarisi.doc',
            isDirectory: false,
            modifiedDate: DateTime(2023, 3, 3, 18, 48),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/ihale-dokumani/2023_226755_sozlesme_tasarisi.doc',
            size: '78.1 KB',
            extension: 'doc',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/ihale-dokumani/2023_226755_sozlesme_tasarisi.doc',
          ),
          FileEntry(
            name: 'standartFormlar',
            isDirectory: true,
            modifiedDate: DateTime(2023, 8, 6, 13, 27),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/ihale-dokumani/standart-formlar',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/ihale-dokumani/standart-formlar',
          ),
        ];
      case '/kabul-tutanaklari':
        return [
          FileEntry(
            name: '1.KISMİ GEÇİCİ KABUL',
            isDirectory: true,
            modifiedDate: DateTime(2024, 4, 15, 10, 25),
            rolesWithViewAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/kabul-tutanaklari/1_kismi_gecici_kabul',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/kabul-tutanaklari/1_kismi_gecici_kabul',
          ),
          FileEntry(
            name: 'GEÇİCİ KABUL',
            isDirectory: true,
            modifiedDate: DateTime(2024, 7, 10, 14, 11),
            rolesWithViewAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/kabul-tutanaklari/gecici_kabul',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/kabul-tutanaklari/gecici_kabul',
          ),
        ];
      case '/malzeme-onaylari':
        return [
          FileEntry(
            name: '-.YAZIŞMALAR',
            isDirectory: true,
            modifiedDate: DateTime(2023, 6, 5, 10, 6),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/malzeme-onaylari/yazismalar',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/malzeme-onaylari/yazismalar',
          ),
          FileEntry(
            name: 'ELEKTRİK',
            isDirectory: true,
            modifiedDate: DateTime(2024, 1, 3, 14, 4),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/malzeme-onaylari/elektrik',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/malzeme-onaylari/elektrik',
          ),
          FileEntry(
            name: 'MEKANİK',
            isDirectory: true,
            modifiedDate: DateTime(2024, 1, 16, 8, 52),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/malzeme-onaylari/mekanik',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/malzeme-onaylari/mekanik',
          ),
          FileEntry(
            name: 'PEYZAJ',
            isDirectory: true,
            modifiedDate: DateTime(2021, 3, 23, 11, 56),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/malzeme-onaylari/peyzaj',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/malzeme-onaylari/peyzaj',
          ),
          FileEntry(
            name: 'İNŞAAT - EKSİK',
            isDirectory: true,
            modifiedDate: DateTime(2023, 11, 27, 14, 37),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/malzeme-onaylari/insaat-eksik',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/malzeme-onaylari/insaat-eksik',
          ),
        ];
      case '/projeler-eksik':
        return [
          FileEntry(
            name: '.-DWG - EKSİK',
            isDirectory: true,
            modifiedDate: DateTime(2024, 5, 8, 22, 1),
            rolesWithViewAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/projeler-eksik/dwg-eksik',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/projeler-eksik/dwg-eksik',
          ),
          FileEntry(
            name: '.AS ALTYAPI - ONAYLANDI. TARAMA GELMEDİ',
            isDirectory: true,
            modifiedDate: DateTime(2024, 10, 23, 0, 14),
            rolesWithViewAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/projeler-eksik/as-altyapi-onaylandi',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/projeler-eksik/as-altyapi-onaylandi',
          ),
          FileEntry(
            name: '.AS MİMARİ - ONAYLANDI. TARAMA GELMEDİ',
            isDirectory: true,
            modifiedDate: DateTime(2024, 10, 23, 0, 14),
            rolesWithViewAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/projeler-eksik/as-mimari-onaylandi',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/projeler-eksik/as-mimari-onaylandi',
          ),
          FileEntry(
            name: 'ALTYAPI - GELMEDİ',
            isDirectory: true,
            modifiedDate: DateTime(2021, 2, 25, 8, 20),
            rolesWithViewAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/projeler-eksik/altyapi-gelmedi',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/projeler-eksik/altyapi-gelmedi',
          ),
          FileEntry(
            name: 'ASANSÖR',
            isDirectory: true,
            modifiedDate: DateTime(2024, 6, 6, 15, 23),
            rolesWithViewAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/projeler-eksik/asansor',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/projeler-eksik/asansor',
          ),
          FileEntry(
            name: 'ELEKTRİK - REV',
            isDirectory: true,
            modifiedDate: DateTime(2023, 9, 5, 23, 7),
            rolesWithViewAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/projeler-eksik/elektrik-rev',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/projeler-eksik/elektrik-rev',
          ),
          FileEntry(
            name: 'ELEKTRİK ALTYAPI',
            isDirectory: true,
            modifiedDate: DateTime(2024, 6, 6, 15, 23),
            rolesWithViewAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/projeler-eksik/elektrik-altyapi',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/projeler-eksik/elektrik-altyapi',
          ),
          FileEntry(
            name: 'MEKANİK  - UYG',
            isDirectory: true,
            modifiedDate: DateTime(2023, 11, 13, 18, 6),
            rolesWithViewAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/projeler-eksik/mekanik-uyg',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/projeler-eksik/mekanik-uyg',
          ),
          FileEntry(
            name: 'MİMARİ  - UYG',
            isDirectory: true,
            modifiedDate: DateTime(2023, 9, 25, 8, 53),
            rolesWithViewAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/projeler-eksik/mimari-uyg',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/projeler-eksik/mimari-uyg',
          ),
          FileEntry(
            name: 'MİMARİ - REV',
            isDirectory: true,
            modifiedDate: DateTime(2023, 9, 25, 8, 54),
            rolesWithViewAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/projeler-eksik/mimari-rev',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/projeler-eksik/mimari-rev',
          ),
          FileEntry(
            name: 'PEYZAJ - UYG',
            isDirectory: true,
            modifiedDate: DateTime(2024, 11, 19, 0, 54),
            rolesWithViewAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/projeler-eksik/peyzaj-uyg',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/projeler-eksik/peyzaj-uyg',
          ),
          FileEntry(
            name: 'STATİK  - UYG',
            isDirectory: true,
            modifiedDate: DateTime(2023, 8, 14, 11, 48),
            rolesWithViewAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/projeler-eksik/statik-uyg',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/projeler-eksik/statik-uyg',
          ),
          FileEntry(
            name: 'ZEMİN',
            isDirectory: true,
            modifiedDate: DateTime(2024, 8, 22, 9, 40),
            rolesWithViewAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/projeler-eksik/zemin',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/projeler-eksik/zemin',
          ),
        ];
      case '/sozlesme':
        return [
          FileEntry(
            name: '1-Sözleşme Evrakları.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2023, 7, 27, 8, 52),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/sozlesme/1_sozlesme_evraklari.pdf',
            size: '6.8 MB',
            extension: 'pdf',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/sozlesme/1_sozlesme_evraklari.pdf',
          ),
          FileEntry(
            name: '2-Sözleşme.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2023, 7, 27, 8, 52),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/sozlesme/2_sozlesme.pdf',
            size: '4.1 MB',
            extension: 'pdf',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/sozlesme/2_sozlesme.pdf',
          ),
          FileEntry(
            name: '3-İdari Şartname.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2023, 7, 27, 8, 52),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/sozlesme/3_idari_sartname.pdf',
            size: '1.7 MB',
            extension: 'pdf',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/sozlesme/3_idari_sartname.pdf',
          ),
          FileEntry(
            name: '4-Özel İdari Teknik Şartname.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2023, 7, 27, 8, 52),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/sozlesme/4_ozel_idari_teknik_sartname.pdf',
            size: '4.3 MB',
            extension: 'pdf',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/sozlesme/4_ozel_idari_teknik_sartname.pdf',
          ),
          FileEntry(
            name: '5-İnşaat Mahal Listesi.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2023, 7, 27, 8, 52),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/sozlesme/5_insaat_mahal_listesi.pdf',
            size: '7.3 MB',
            extension: 'pdf',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/sozlesme/5_insaat_mahal_listesi.pdf',
          ),
          FileEntry(
            name: '6-Elektrik Mahal Listesi.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2023, 7, 27, 8, 52),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/sozlesme/6_elektrik_mahal_listesi.pdf',
            size: '7.9 MB',
            extension: 'pdf',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/sozlesme/6_elektrik_mahal_listesi.pdf',
          ),
          FileEntry(
            name: '7-Mekanik Mahal Listesi.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2023, 7, 27, 8, 52),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/sozlesme/7_mekanik_mahal_listesi.pdf',
            size: '3.2 MB',
            extension: 'pdf',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/sozlesme/7_mekanik_mahal_listesi.pdf',
          ),
          FileEntry(
            name: '8-Peyzaj Mahal Listesi.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2023, 7, 27, 8, 52),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/sozlesme/8_peyzaj_mahal_listesi.pdf',
            size: '4.9 MB',
            extension: 'pdf',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/sozlesme/8_peyzaj_mahal_listesi.pdf',
          ),
          FileEntry(
            name: '9-Altyapı Genel Şartname.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2023, 7, 27, 8, 52),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/sozlesme/9_altyapi_genel_sartname.pdf',
            size: '1.3 MB',
            extension: 'pdf',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/sozlesme/9_altyapi_genel_sartname.pdf',
          ),
          FileEntry(
            name: '10-Proje Özel Teknik Şartnamesi.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2023, 7, 27, 8, 50),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/sozlesme/10_proje_ozel_teknik_sartnamesi.pdf',
            size: '4.1 MB',
            extension: 'pdf',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/sozlesme/10_proje_ozel_teknik_sartnamesi.pdf',
          ),
        ];
      case '/teslim-tutanaklari':
        return [
          FileEntry(
            name: 'İŞYERİ TESLİM TUTANAĞI.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2023, 7, 27, 8, 52),
            rolesWithViewAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'kontrol_mühendisi'],
            path: '/teslim-tutanaklari/isyeri_teslim_tutanagi.pdf',
            size: '113.3 KB',
            extension: 'pdf',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/teslim-tutanaklari/isyeri_teslim_tutanagi.pdf',
          ),
        ];
      case '/yazismalar':
        return [
          FileEntry(
            name: 'GELEN',
            isDirectory: true,
            modifiedDate: DateTime(2023, 6, 5, 8, 56),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'idari_personel'],
            path: '/yazismalar/gelen',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/yazismalar/gelen',
          ),
          FileEntry(
            name: 'GİDEN',
            isDirectory: true,
            modifiedDate: DateTime(2023, 6, 5, 8, 56),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'idari_personel'],
            path: '/yazismalar/giden',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/yazismalar/giden',
          ),
          FileEntry(
            name: 'İÇ YAZIŞMALAR',
            isDirectory: true,
            modifiedDate: DateTime(2023, 8, 9, 14, 3),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer', 'idari_personel'],
            path: '/yazismalar/ic_yazismalar',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/yazismalar/ic_yazismalar',
          ),
        ];
      case '/isg':
        return [
          // İSG klasörü boş görünüyor
        ];
      case '/is-programi':
        return [
          FileEntry(
            name: 'İŞ PROGRAMI.pdf',
            isDirectory: false,
            modifiedDate: DateTime(2023, 7, 27, 17, 31),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/is-programi/is_programi.pdf',
            size: '27.2 MB',
            extension: 'pdf',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/is-programi/is_programi.pdf',
          ),
        ];
      case '/sikayet-giderilmesi':
        return [
          FileEntry(
            name: 'GELEN',
            isDirectory: true,
            modifiedDate: DateTime(2023, 6, 5, 10, 6),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/sikayet-giderilmesi/gelen',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/sikayet-giderilmesi/gelen',
          ),
          FileEntry(
            name: 'GİDEN',
            isDirectory: true,
            modifiedDate: DateTime(2023, 6, 5, 10, 6),
            rolesWithViewAccess: ['admin', 'engineer', 'idari_personel'],
            rolesWithEditAccess: ['admin', 'engineer'],
            rolesWithDownloadAccess: ['admin', 'engineer'],
            path: '/sikayet-giderilmesi/giden',
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '/sikayet-giderilmesi/giden',
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
            url:
                'http://desis.prokon.com.tr/Data/ERENSAN_OZPOLAT_GAZIANTEP_ILI_NURDAGI_ILCESI_BASPINAR_MAH_2.ETAP_479AD_KONUT_INSAATI' +
                '$folderPath/ornek_dosya.pdf',
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
