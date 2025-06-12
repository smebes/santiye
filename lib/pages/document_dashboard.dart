import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/app_state.dart';
import '../services/mock_data.dart';
import '../utils/permissions.dart';
import '../widgets/folder_card.dart';
import 'folder_contents_page.dart';
import 'login_page.dart';

class DocumentDashboard extends StatelessWidget {
  const DocumentDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth > 600;
    final isDesktop = screenWidth > 900;

    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text('Şantiye Belge Sistemi', style: TextStyle(fontSize: isDesktop ? 20 : 18, fontWeight: FontWeight.bold)),
            if (isTablet) ...[
              const SizedBox(height: 2),
              Text(
                Permissions.getProjectShortTitle(),
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: Colors.white.withOpacity(0.8)),
              ),
            ],
          ],
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        elevation: 2,
        actions: [
          Consumer<AppState>(
            builder: (context, appState, child) {
              if (appState.currentUser != null) {
                return PopupMenuButton<String>(
                  onSelected: (value) {
                    if (value == 'logout') {
                      appState.logout();
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const LoginPage()));
                    }
                  },
                  itemBuilder:
                      (context) => [
                        PopupMenuItem(
                          value: 'logout',
                          child: const Row(children: [Icon(Icons.logout), SizedBox(width: 8), Text('Çıkış Yap')]),
                        ),
                      ],
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Text(
                            appState.currentUser!.name[0].toUpperCase(),
                            style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(width: 8),
                        if (isTablet) ...[
                          Text(appState.currentUser!.name, style: const TextStyle(color: Colors.white)),
                        ],
                        const Icon(Icons.arrow_drop_down, color: Colors.white),
                      ],
                    ),
                  ),
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ],
      ),
      body: Consumer<AppState>(
        builder: (context, appState, child) {
          if (appState.currentUser == null) {
            return const Center(child: Text('Lütfen giriş yapın'));
          }

          final filteredFolders = appState.getFilteredFolders();
          final roleDisplayNames = MockDataService.getRoleDisplayNames();

          return Column(
            children: [
              // Proje bilgi kartı
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(isDesktop ? 24 : 16),
                padding: EdgeInsets.all(isDesktop ? 24 : 16),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Theme.of(context).colorScheme.primaryContainer,
                      Theme.of(context).colorScheme.secondaryContainer,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    if (isDesktop) ...[
                      Text(
                        Permissions.getProjectTitle(),
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 8),
                    ],
                    Text(
                      'Hoş Geldiniz, ${appState.currentUser!.name}',
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Rol: ${roleDisplayNames[appState.currentUser!.role] ?? appState.currentUser!.role}',
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7)),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Erişim sağlayabileceğiniz ${filteredFolders.length} klasör bulunmaktadır',
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6)),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        'Son güncelleme: ${Permissions.formatDateTime(DateTime.now())}',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Klasör listesi
              Expanded(
                child:
                    filteredFolders.isEmpty
                        ? const Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.folder_off, size: 64, color: Colors.grey),
                              SizedBox(height: 16),
                              Text(
                                'Erişim sağlayabileceğiniz klasör bulunmamaktadır',
                                style: TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                            ],
                          ),
                        )
                        : GridView.builder(
                          padding: EdgeInsets.all(isDesktop ? 24 : 16),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount:
                                isDesktop
                                    ? 5
                                    : isTablet
                                    ? 3
                                    : 2,
                            childAspectRatio:
                                isDesktop
                                    ? 1
                                    : isTablet
                                    ? 0.8
                                    : 0.7,
                            crossAxisSpacing: isDesktop ? 12 : 8,
                            mainAxisSpacing: isDesktop ? 12 : 8,
                          ),
                          itemCount: filteredFolders.length,
                          itemBuilder: (context, index) {
                            final folder = filteredFolders[index];
                            return FolderCard(
                              folder: folder,
                              userRole: appState.currentUser!.role,
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder:
                                        (context) =>
                                            FolderContentsPage(folderName: folder.name, folderPath: folder.path!),
                                  ),
                                );
                              },
                            );
                          },
                        ),
              ),
            ],
          );
        },
      ),
    );
  }
}
