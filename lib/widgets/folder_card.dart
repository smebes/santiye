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
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth > 600;
    final isDesktop = screenWidth > 900;

    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(8),
      child: InkWell(
        onTap: canView ? onTap : null,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: EdgeInsets.all(isDesktop ? 20 : 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient:
                canView
                    ? LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Theme.of(context).colorScheme.primaryContainer.withOpacity(0.3),
                        Theme.of(context).colorScheme.primaryContainer.withOpacity(0.1),
                      ],
                    )
                    : null,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Permissions.getFolderIcon(folder.name),
                style: TextStyle(
                  fontSize:
                      isDesktop
                          ? 56
                          : isTablet
                          ? 48
                          : 40,
                ),
              ),
              SizedBox(height: isDesktop ? 16 : 12),
              Text(
                folder.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize:
                      isDesktop
                          ? 18
                          : isTablet
                          ? 16
                          : 14,
                  fontWeight: FontWeight.bold,
                  color:
                      canView
                          ? Theme.of(context).colorScheme.onSurface
                          : Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
                ),
                maxLines: isDesktop ? 3 : 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: isDesktop ? 12 : 8),
              Text(
                'Son güncelleme: ${Permissions.formatDate(folder.modifiedDate)}',
                style: TextStyle(
                  fontSize: isDesktop ? 14 : 12,
                  color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
                ),
                textAlign: TextAlign.center,
              ),
              if (!canView) ...[
                SizedBox(height: isDesktop ? 12 : 8),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: isDesktop ? 12 : 8, vertical: isDesktop ? 6 : 4),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.error.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Erişim Yok',
                    style: TextStyle(
                      fontSize: isDesktop ? 12 : 10,
                      color: Theme.of(context).colorScheme.error,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
