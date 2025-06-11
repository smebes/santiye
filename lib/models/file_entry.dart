class FileEntry {
  final String name;
  final bool isDirectory;
  final DateTime modifiedDate;
  final List<String> rolesWithViewAccess;
  final List<String> rolesWithEditAccess;
  final List<String> rolesWithDownloadAccess;
  final String? path;
  final String? size;
  final String? extension;
  final String? url;

  FileEntry({
    required this.name,
    required this.isDirectory,
    required this.modifiedDate,
    required this.rolesWithViewAccess,
    required this.rolesWithEditAccess,
    required this.rolesWithDownloadAccess,
    this.path,
    this.size,
    this.extension,
    this.url,
  });

  factory FileEntry.fromJson(Map<String, dynamic> json) {
    return FileEntry(
      name: json['name'] ?? '',
      isDirectory: json['isDirectory'] ?? false,
      modifiedDate: DateTime.parse(json['modifiedDate'] ?? DateTime.now().toIso8601String()),
      rolesWithViewAccess: List<String>.from(json['rolesWithViewAccess'] ?? []),
      rolesWithEditAccess: List<String>.from(json['rolesWithEditAccess'] ?? []),
      rolesWithDownloadAccess: List<String>.from(json['rolesWithDownloadAccess'] ?? []),
      path: json['path'],
      size: json['size'],
      extension: json['extension'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'isDirectory': isDirectory,
      'modifiedDate': modifiedDate.toIso8601String(),
      'rolesWithViewAccess': rolesWithViewAccess,
      'rolesWithEditAccess': rolesWithEditAccess,
      'rolesWithDownloadAccess': rolesWithDownloadAccess,
      'path': path,
      'size': size,
      'extension': extension,
      'url': url,
    };
  }

  bool hasViewAccess(String role) {
    return rolesWithViewAccess.contains(role);
  }

  bool hasEditAccess(String role) {
    return rolesWithEditAccess.contains(role);
  }

  bool hasDownloadAccess(String role) {
    return rolesWithDownloadAccess.contains(role);
  }
}
