class User {
  final String firstName;

  User({
    required this.firstName,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      firstName: json['firstname'],
    );
  }
}
