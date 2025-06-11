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

    return SizedBox(
      width: 260,
      height: 120,
      child: Card(
        elevation: 4,
        margin: const EdgeInsets.all(8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    file.extension == 'pdf'
                        ? Icons.picture_as_pdf
                        : file.extension == 'jpg'
                        ? Icons.image
                        : Icons.insert_drive_file,
                    size: 32,
                    color:
                        file.extension == 'pdf'
                            ? Colors.red
                            : (file.extension == 'jpg' ? Colors.blue : Colors.grey[700]),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      file.name,
                      style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Boyut: ${file.size ?? '-'}', style: TextStyle(fontSize: 12, color: Colors.grey[600])),
                  Row(
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
                    ],
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Son: ${Permissions.formatDate(file.modifiedDate)}',
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
