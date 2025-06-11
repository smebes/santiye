import 'package:flutter/foundation.dart';
import '../models/user.dart';
import '../models/file_entry.dart';
import 'mock_data.dart';

class AppState extends ChangeNotifier {
  User? _currentUser;
  List<FileEntry> _mainFolders = [];
  List<FileEntry> _currentFolderContents = [];
  String _currentFolderPath = '';
  bool _isLoading = false;

  User? get currentUser => _currentUser;
  List<FileEntry> get mainFolders => _mainFolders;
  List<FileEntry> get currentFolderContents => _currentFolderContents;
  String get currentFolderPath => _currentFolderPath;
  bool get isLoading => _isLoading;

  AppState() {
    _loadMainFolders();
  }

  void _loadMainFolders() {
    _mainFolders = MockDataService.getMainFolders();
    notifyListeners();
  }

  void login(String userName, String role) {
    _currentUser = User(
      id: '1',
      name: userName.isEmpty ? 'Kullanıcı' : userName,
      role: role,
      lastLogin: DateTime.now(),
    );
    notifyListeners();
  }

  void logout() {
    _currentUser = null;
    _currentFolderContents = [];
    _currentFolderPath = '';
    notifyListeners();
  }

  void loadFolderContents(String folderPath) {
    _isLoading = true;
    notifyListeners();

    // Simulate loading delay
    Future.delayed(const Duration(milliseconds: 500), () {
      _currentFolderPath = folderPath;
      _currentFolderContents = MockDataService.getFolderContents(folderPath);
      _isLoading = false;
      notifyListeners();
    });
  }

  List<FileEntry> getFilteredFolders() {
    if (_currentUser == null) return [];

    return _mainFolders.where((folder) {
      return folder.hasViewAccess(_currentUser!.role);
    }).toList();
  }

  List<FileEntry> getFilteredFiles() {
    if (_currentUser == null) return [];

    return _currentFolderContents.where((file) {
      return file.hasViewAccess(_currentUser!.role);
    }).toList();
  }

  bool canViewFile(FileEntry file) {
    if (_currentUser == null) return false;
    return file.hasViewAccess(_currentUser!.role);
  }

  bool canEditFile(FileEntry file) {
    if (_currentUser == null) return false;
    return file.hasEditAccess(_currentUser!.role);
  }

  bool canDownloadFile(FileEntry file) {
    if (_currentUser == null) return false;
    return file.hasDownloadAccess(_currentUser!.role);
  }
}
