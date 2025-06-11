import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/app_state.dart';
import '../services/mock_data.dart';
import 'document_dashboard.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _userNameController = TextEditingController();
  String _selectedRole = 'engineer';

  @override
  void dispose() {
    _userNameController.dispose();
    super.dispose();
  }

  void _login() {
    if (_formKey.currentState!.validate()) {
      final appState = Provider.of<AppState>(context, listen: false);
      appState.login(_userNameController.text, _selectedRole);

      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const DocumentDashboard()));
    }
  }

  @override
  Widget build(BuildContext context) {
    final roleDisplayNames = MockDataService.getRoleDisplayNames();
    final availableRoles = MockDataService.getAvailableRoles();
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth > 600;
    final isDesktop = screenWidth > 900;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Theme.of(context).colorScheme.primary.withOpacity(0.1),
              Theme.of(context).colorScheme.secondary.withOpacity(0.1),
            ],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(isDesktop ? 32 : 24),
            child: Card(
              elevation: 8,
              child: Container(
                constraints: BoxConstraints(
                  maxWidth:
                      isDesktop
                          ? 500
                          : isTablet
                          ? 450
                          : 400,
                ),
                padding: EdgeInsets.all(
                  isDesktop
                      ? 40
                      : isTablet
                      ? 32
                      : 24,
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Logo ve başlık
                      Container(
                        width: isDesktop ? 100 : 80,
                        height: isDesktop ? 100 : 80,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(isDesktop ? 25 : 20),
                        ),
                        child: Icon(Icons.folder_shared, size: isDesktop ? 50 : 40, color: Colors.white),
                      ),
                      SizedBox(height: isDesktop ? 32 : 24),
                      Text(
                        'Şantiye Belge Sistemi',
                        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary,
                          fontSize:
                              isDesktop
                                  ? 32
                                  : isTablet
                                  ? 28
                                  : 24,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Kurum İçi Belge Takip ve Yetkilendirme',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
                          fontSize: isDesktop ? 16 : 14,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: isDesktop ? 40 : 32),

                      // Kullanıcı adı alanı
                      TextFormField(
                        controller: _userNameController,
                        decoration: const InputDecoration(
                          labelText: 'Kullanıcı Adı (Opsiyonel)',
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          // Kullanıcı adı opsiyonel olduğu için validation yok
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),

                      // Rol seçimi
                      DropdownButtonFormField<String>(
                        value: _selectedRole,
                        decoration: const InputDecoration(
                          labelText: 'Rol Seçiniz',
                          prefixIcon: Icon(Icons.work),
                          border: OutlineInputBorder(),
                        ),
                        items:
                            availableRoles.map((role) {
                              return DropdownMenuItem(value: role, child: Text(roleDisplayNames[role] ?? role));
                            }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedRole = value!;
                          });
                        },
                      ),
                      SizedBox(height: isDesktop ? 40 : 32),

                      // Giriş butonu
                      SizedBox(
                        width: double.infinity,
                        height: isDesktop ? 56 : 50,
                        child: ElevatedButton(
                          onPressed: _login,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Theme.of(context).colorScheme.primary,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          ),
                          child: Text(
                            'Sisteme Giriş Yap',
                            style: TextStyle(fontSize: isDesktop ? 18 : 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Bilgi metni
                      Container(
                        padding: EdgeInsets.all(isDesktop ? 16 : 12),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'Her rol farklı yetkilere sahiptir. Sistem içeriğine erişiminiz seçtiğiniz role göre belirlenir.',
                          style: TextStyle(
                            fontSize: isDesktop ? 14 : 12,
                            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.8),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
