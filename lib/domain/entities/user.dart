class User {
  User({
    required this.id,
    required this.email,
    this.nickname,
    this.avatar,
  });

  final int id;
  final String email;
  String? nickname;
  String? avatar;
}
