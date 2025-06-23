class UserScheme {
  final int id;
  String firstname;
  String lastname;
  String username;
  String email;
  String password;
  double wallet = 0;
  bool isVerified = false;
  String avatarUrl;

  UserScheme({
    required this.id,
    required this.firstname,
    required this.lastname,
    required this.username,
    required this.email,
    required this.password,
    required this.avatarUrl,
  });
}
