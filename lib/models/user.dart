class User {
  final String id;
  final String name;
  final String role;
  final String? email;
  final DateTime lastLogin;

  User({required this.id, required this.name, required this.role, this.email, required this.lastLogin});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      role: json['role'] ?? '',
      email: json['email'],
      lastLogin: DateTime.parse(json['lastLogin'] ?? DateTime.now().toIso8601String()),
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'role': role, 'email': email, 'lastLogin': lastLogin.toIso8601String()};
  }

  bool get isAdmin => role == 'admin';
  bool get isEngineer => role == 'engineer';
  bool get isIdariPersonel => role == 'idari_personel';
  bool get isKontrolMuhendisi => role == 'kontrol_mühendisi';
  bool get isGuest => role == 'guest';
}
