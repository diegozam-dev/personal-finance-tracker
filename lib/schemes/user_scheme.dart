class UserScheme {
  final int id;
  String firstname;
  String lastname;
  String username;
  String avatarUrl;
  String email;
  String password;
  double? wallet = 0;
  bool? isVerified = false;

  UserScheme({
    required this.id,
    required this.firstname,
    required this.lastname,
    required this.username,
    required this.avatarUrl,
    required this.email,
    required this.password,
    this.wallet,
    this.isVerified,
  });
}
