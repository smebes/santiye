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

    return InkWell(
      onTap: canView && onView != null ? onView : null,
      borderRadius: BorderRadius.circular(24),
      child: Card(
        elevation: 6,
        margin: const EdgeInsets.all(8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.white,
        shadowColor: Colors.blueGrey.withOpacity(0.10),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(6),
                    child: Icon(
                      file.extension == 'pdf'
                          ? Icons.picture_as_pdf
                          : file.extension == 'jpg' || file.extension == 'jpeg' || file.extension == 'png'
                          ? Icons.image
                          : Icons.insert_drive_file,
                      size: 28,
                      color:
                          file.extension == 'pdf'
                              ? Colors.red[700]
                              : (file.extension == 'jpg' || file.extension == 'jpeg' || file.extension == 'png'
                                  ? Colors.blue[700]
                                  : Colors.grey[700]),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Tooltip(
                      message: file.name,
                      child: Text(
                        file.name,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                'Boyut: ${file.size ?? '-'}  |  Son: ${Permissions.formatDate(file.modifiedDate)}',
                style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
