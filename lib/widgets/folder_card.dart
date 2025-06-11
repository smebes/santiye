import 'package:flutter/material.dart';
import '../models/file_entry.dart';
import '../utils/permissions.dart';

class FolderCard extends StatelessWidget {
  final FileEntry folder;
  final VoidCallback onTap;
  final String? userRole;

  const FolderCard({super.key, required this.folder, required this.onTap, this.userRole});

  @override
  Widget build(BuildContext context) {
    final role = userRole ?? 'guest';
    final canView = folder.hasViewAccess(role);

    return SizedBox(
      width: 260,
      height: 120,
      child: Card(
        elevation: 4,
        margin: const EdgeInsets.all(8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: InkWell(
          onTap: canView ? onTap : null,
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.folder, size: 36, color: Colors.amber[700]),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        folder.name,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color:
                              canView
                                  ? Theme.of(context).colorScheme.onSurface
                                  : Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Son: ${Permissions.formatDate(folder.modifiedDate)}',
                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
