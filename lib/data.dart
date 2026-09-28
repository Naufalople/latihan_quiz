class User {
  String email;
  String password;
  String nama;
  User({required this.email, required this.password, required this.nama});
}

List<User> users = [
  User(email: "Naufal@gmail.com", password: "1234", nama: "Naufal"),
  User(email: "lutpan@gmail.com", password: "lutpan123", nama: "lutpan"),
  User(email: "bintoro@gmail.com", password: "linkebin", nama: "binturong"),
];
