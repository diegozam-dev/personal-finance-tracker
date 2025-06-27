class UserModel {
  final int userId;
  String firstname;
  String lastname;
  String username;
  String avatarUrl;
  String email;
  String password;
  double wallet;
  bool isVerified;

  UserModel({
    required this.userId,
    required this.firstname,
    required this.lastname,
    required this.username,
    required this.avatarUrl,
    required this.email,
    required this.password,
    this.wallet = 0,
    this.isVerified = false,
  });
}
