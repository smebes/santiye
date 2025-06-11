import 'package:flutter/material.dart';
import '../models/file_entry.dart';
import '../utils/permissions.dart';

class FileCard extends StatelessWidget {
  final FileEntry file;
  final String? userRole;
  final VoidCallback? onView;
  final VoidCallback? onDownload;
  final VoidCallback? onEdit;

  const FileCard({super.key, required this.file, this.userRole, this.onView, this.onDownload, this.onEdit});

  @override
  Widget build(BuildContext context) {
    final role = userRole ?? 'guest';
    final canView = file.hasViewAccess(role);
    final canEdit = file.hasEditAccess(role);
    final canDownload = file.hasDownloadAccess(role);

    return Card(
      elevation: 8,
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      color: Colors.white,
      shadowColor: Colors.blueGrey.withOpacity(0.12),
      child: Container(
        constraints: const BoxConstraints(minHeight: 220, minWidth: 320),
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Üst satır: ikon + dosya adı
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color:
                        file.extension == 'pdf'
                            ? Colors.red[50]
                            : (file.extension == 'jpg' || file.extension == 'jpeg' || file.extension == 'png'
                                ? Colors.blue[50]
                                : Colors.grey[100]),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Icon(
                    file.extension == 'pdf'
                        ? Icons.picture_as_pdf
                        : file.extension == 'jpg' || file.extension == 'jpeg' || file.extension == 'png'
                        ? Icons.image
                        : Icons.insert_drive_file,
                    size: 44,
                    color:
                        file.extension == 'pdf'
                            ? Colors.red[700]
                            : (file.extension == 'jpg' || file.extension == 'jpeg' || file.extension == 'png'
                                ? Colors.blue[700]
                                : Colors.grey[700]),
                  ),
                ),
                const SizedBox(width: 22),
                Expanded(
                  child: Tooltip(
                    message: file.name,
                    child: Text(
                      file.name,
                      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w700, letterSpacing: 0.1),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 28),
            // Alt satır: bilgiler
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Boyut: ${file.size ?? '-'}', style: TextStyle(fontSize: 16, color: Colors.grey[700])),
                Text(
                  'Son: ${Permissions.formatDate(file.modifiedDate)}',
                  style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                ),
              ],
            ),
            const SizedBox(height: 18),
            // Butonlar
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (canView && onView != null)
                      IconButton(
                        onPressed: onView,
                        icon: const Icon(Icons.visibility),
                        tooltip: 'Görüntüle',
                        color: Theme.of(context).colorScheme.primary,
                        iconSize: 32,
                        splashRadius: 28,
                      ),
                    if (canDownload && onDownload != null)
                      IconButton(
                        onPressed: onDownload,
                        icon: const Icon(Icons.download),
                        tooltip: 'İndir',
                        color: Theme.of(context).colorScheme.secondary,
                        iconSize: 32,
                        splashRadius: 28,
                      ),
                    if (canEdit && onEdit != null)
                      IconButton(
                        onPressed: onEdit,
                        icon: const Icon(Icons.edit),
                        tooltip: 'Düzenle',
                        color: Theme.of(context).colorScheme.tertiary,
                        iconSize: 32,
                        splashRadius: 28,
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
