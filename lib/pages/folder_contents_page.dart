import 'package:flutter/material.dart';
import '../models/file_entry.dart';
import '../services/mock_data.dart';
import '../services/app_state.dart';
import '../utils/permissions.dart';
import '../widgets/file_card.dart';
import '../widgets/folder_card.dart';
import 'package:provider/provider.dart';

class FolderContentsPage extends StatefulWidget {
  final String folderPath;
  final String folderName;

  const FolderContentsPage({Key? key, required this.folderPath, required this.folderName}) : super(key: key);

  @override
  State<FolderContentsPage> createState() => _FolderContentsPageState();
}

class _FolderContentsPageState extends State<FolderContentsPage> {
  List<FileEntry> _files = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadFolderContents();
  }

  void _loadFolderContents() {
    setState(() {
      _isLoading = true;
    });

    // Simüle edilmiş yükleme süresi
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _files = MockDataService.getFolderContents(widget.folderPath);
        _isLoading = false;
      });
    });
  }

  List<String> _getBreadcrumbs() {
    List<String> breadcrumbs = ['Ana Sayfa'];

    // Path'i parçalara ayır
    List<String> pathParts = widget.folderPath.split('/').where((part) => part.isNotEmpty).toList();

    for (String part in pathParts) {
      // Path'i okunabilir hale getir
      String displayName = part.replaceAll('-', ' ').toUpperCase();
      if (part == 'gorseller') displayName = 'GÖRSELLER';
      if (part == 'hakedisler') displayName = 'HAKEDİŞLER';
      if (part == 'cephe-renkleri') displayName = 'CEPHE RENKLERİ';
      if (part == 'tip-1-gb') displayName = 'TIP-1 (GB)';
      if (part == 'tip-2-db') displayName = 'TIP-2 (DB)';
      if (part == 'kabul-tutanaklari') displayName = 'KABUL TUTANAKLARI';
      if (part == 'malzeme-onaylari') displayName = 'MALZEME ONAYLARI';
      if (part == 'projeler-eksik') displayName = 'PROJELER - EKSİK';
      if (part == 'sozlesme') displayName = 'SÖZLEŞME';
      if (part == 'teslim-tutanaklari') displayName = 'TESLİM TUTANAKLARI';
      if (part == 'yazismalar') displayName = 'YAZIŞMALAR';
      if (part == 'isg') displayName = 'İSG';
      if (part == 'is-programi') displayName = 'İŞ PROGRAMI';
      if (part == 'sikayet-giderilmesi') displayName = 'ŞİKAYET VE ŞİKAYETLERİN GİDERİLMESİ';

      breadcrumbs.add(displayName);
    }

    return breadcrumbs;
  }

  void _navigateToBreadcrumb(int index) {
    if (index == 0) {
      // Ana sayfaya dön
      Navigator.of(context).pop();
      return;
    }

    // Belirli bir breadcrumb'a git
    List<String> pathParts = widget.folderPath.split('/').where((part) => part.isNotEmpty).toList();
    if (index <= pathParts.length) {
      String targetPath = '/' + pathParts.take(index).join('/');
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => FolderContentsPage(folderPath: targetPath, folderName: _getBreadcrumbs()[index]),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    final currentRole = appState.currentRole;
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;
    final isTablet = screenWidth >= 600 && screenWidth < 900;

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.folderName, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Text(
              'ERENSAN ÖZPOLAT - GAZİANTEP NURDAĞI PROJESİ',
              style: TextStyle(fontSize: 12, color: Colors.grey[600], fontWeight: FontWeight.normal),
            ),
          ],
        ),
        backgroundColor: Colors.blue[50],
        elevation: 2,
        actions: [
          IconButton(icon: const Icon(Icons.refresh), onPressed: _loadFolderContents, tooltip: 'Yenile'),
          const SizedBox(width: 8),
        ],
      ),
      body: Column(
        children: [
          // Breadcrumb Navigation
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              border: Border(bottom: BorderSide(color: Colors.grey[300]!)),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children:
                    _getBreadcrumbs().asMap().entries.map((entry) {
                      int index = entry.key;
                      String breadcrumb = entry.value;
                      bool isLast = index == _getBreadcrumbs().length - 1;

                      return Row(
                        children: [
                          if (index > 0)
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              child: Icon(Icons.chevron_right, color: Colors.grey[600], size: 20),
                            ),
                          GestureDetector(
                            onTap: () => _navigateToBreadcrumb(index),
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                              decoration: BoxDecoration(
                                color: isLast ? Colors.blue[100] : Colors.transparent,
                                borderRadius: BorderRadius.circular(16),
                                border: isLast ? Border.all(color: Colors.blue[300]!) : null,
                              ),
                              child: Text(
                                breadcrumb,
                                style: TextStyle(
                                  color: isLast ? Colors.blue[800] : Colors.grey[700],
                                  fontWeight: isLast ? FontWeight.bold : FontWeight.normal,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }).toList(),
              ),
            ),
          ),

          // Content
          Expanded(
            child:
                _isLoading
                    ? const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularProgressIndicator(),
                          SizedBox(height: 16),
                          Text('Klasör içeriği yükleniyor...'),
                        ],
                      ),
                    )
                    : _files.isEmpty
                    ? const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.folder_open, size: 64, color: Colors.grey),
                          SizedBox(height: 16),
                          Text('Bu klasör boş', style: TextStyle(fontSize: 18, color: Colors.grey)),
                        ],
                      ),
                    )
                    : Padding(
                      padding: const EdgeInsets.all(16),
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: isMobile ? 2 : (isTablet ? 3 : 4),
                          childAspectRatio: 2.5,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                        ),
                        itemCount: _files.length,
                        itemBuilder: (context, index) {
                          final file = _files[index];

                          // Yetki kontrolü
                          if (!Permissions.canView(file, currentRole)) {
                            return const SizedBox.shrink();
                          }

                          if (file.isDirectory) {
                            return FolderCard(
                              folder: file,
                              userRole: currentRole ?? 'guest',
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder:
                                        (context) => FolderContentsPage(
                                          folderPath: file.path ?? '',
                                          folderName: file.name ?? 'Klasör',
                                        ),
                                  ),
                                );
                              },
                            );
                          } else {
                            return FileCard(
                              file: file,
                              userRole: currentRole,
                              onView: () {
                                if (Permissions.canView(file, currentRole)) {
                                  _showFileActions(file);
                                }
                              },
                              onDownload: () {
                                if (Permissions.canDownload(file, currentRole)) {
                                  _downloadFile(file);
                                }
                              },
                              onEdit: () {
                                if (Permissions.canEdit(file, currentRole)) {
                                  _editFile(file);
                                }
                              },
                            );
                          }
                        },
                      ),
                    ),
          ),
        ],
      ),
    );
  }

  void _showFileActions(FileEntry file) {
    final appState = Provider.of<AppState>(context, listen: false);
    final currentRole = appState.currentRole;

    showModalBottomSheet(
      context: context,
      builder:
          (context) => Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  file.name,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                if (Permissions.canView(file, currentRole))
                  ListTile(
                    leading: const Icon(Icons.visibility),
                    title: const Text('Görüntüle'),
                    onTap: () {
                      Navigator.pop(context);
                      _viewFile(file);
                    },
                  ),
                if (Permissions.canDownload(file, currentRole))
                  ListTile(
                    leading: const Icon(Icons.download),
                    title: const Text('İndir'),
                    onTap: () {
                      Navigator.pop(context);
                      _downloadFile(file);
                    },
                  ),
                if (Permissions.canEdit(file, currentRole))
                  ListTile(
                    leading: const Icon(Icons.edit),
                    title: const Text('Düzenle'),
                    onTap: () {
                      Navigator.pop(context);
                      _editFile(file);
                    },
                  ),
                const SizedBox(height: 8),
                Text(
                  'Boyut: ${file.size} • Son değişiklik: ${_formatDate(file.modifiedDate)}',
                  style: TextStyle(color: Colors.grey[600], fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
    );
  }

  void _viewFile(FileEntry file) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('${file.name} görüntüleniyor...'), backgroundColor: Colors.blue));
  }

  void _downloadFile(FileEntry file) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('${file.name} indiriliyor...'), backgroundColor: Colors.green));
  }

  void _editFile(FileEntry file) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('${file.name} düzenleniyor...'), backgroundColor: Colors.orange));
  }

  String _formatDate(DateTime date) {
    return '${date.day.toString().padLeft(2, '0')}.${date.month.toString().padLeft(2, '0')}.${date.year}';
  }
}
