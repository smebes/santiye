import 'package:flutter/material.dart';
import '../models/file_entry.dart';
import '../utils/permissions.dart';

class FileCard extends StatelessWidget {
  final FileEntry file;
  final String userRole;
  final VoidCallback? onView;
  final VoidCallback? onDownload;
  final VoidCallback? onEdit;

  const FileCard({super.key, required this.file, required this.userRole, this.onView, this.onDownload, this.onEdit});

  @override
  Widget build(BuildContext context) {
    final canView = file.hasViewAccess(userRole);
    final canEdit = file.hasEditAccess(userRole);
    final canDownload = file.hasDownloadAccess(userRole);

    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: ListTile(
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(child: Text(Permissions.getFileIcon(file.extension), style: const TextStyle(fontSize: 24))),
        ),
        title: Text(
          file.name,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color:
                canView
                    ? Theme.of(context).colorScheme.onSurface
                    : Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Boyut: ${Permissions.formatFileSize(file.size)}',
              style: TextStyle(fontSize: 12, color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7)),
            ),
            Text(
              'Son güncelleme: ${Permissions.formatDateTime(file.modifiedDate)}',
              style: TextStyle(fontSize: 12, color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7)),
            ),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (canView && onView != null)
              IconButton(
                onPressed: onView,
                icon: const Icon(Icons.visibility),
                tooltip: 'Görüntüle',
                color: Theme.of(context).colorScheme.primary,
              ),
            if (canDownload && onDownload != null)
              IconButton(
                onPressed: onDownload,
                icon: const Icon(Icons.download),
                tooltip: 'İndir',
                color: Theme.of(context).colorScheme.secondary,
              ),
            if (canEdit && onEdit != null)
              IconButton(
                onPressed: onEdit,
                icon: const Icon(Icons.edit),
                tooltip: 'Düzenle',
                color: Theme.of(context).colorScheme.tertiary,
              ),
            if (!canView)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.error.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Erişim Yok',
                  style: TextStyle(
                    fontSize: 10,
                    color: Theme.of(context).colorScheme.error,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          ],
        ),
        onTap: canView && onView != null ? onView : null,
      ),
    );
  }
}
