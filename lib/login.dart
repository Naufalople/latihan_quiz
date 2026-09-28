import 'package:flutter/material.dart';

import 'library.dart';
import 'data.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isloggedin = false;
  bool isLoginFailed = false;
  User? loggedInUser;

  void _login() {
    String email = _emailController.text;
    String password = _passwordController.text;

    User? matchedUser;

    try {
      matchedUser = users.firstWhere(
        (u) => u.email == email && u.password == password,
      );
    } catch (_) {
      matchedUser = null;
    }

    if (matchedUser != null) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LibraryPage(nama: matchedUser!.nama),
        ),
      );
    } else {
      setState(() {
        isLoginFailed = true;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Login Gagal: Username atau Password salah'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  void _logout() {
    setState(() {
      isloggedin = false;
      _emailController.clear();
      _passwordController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "login page",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (!isloggedin) ...[
                Text('this is login page'),
                SizedBox(height: 16),
                _emailField(_emailController, isLoginFailed),
                _passwordField(_passwordController, isLoginFailed),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _login,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    minimumSize: Size(200, 45),
                  ),
                  child: Text('login'),
                ),
              ] else ...[
                Text("Halo!"),
                SizedBox(height: 20),
                ElevatedButton(onPressed: _logout, child: Icon(Icons.logout)),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

Widget _emailField(TextEditingController controller, bool isLoginFailed) {
  return _inputField(
    controller: controller,
    hint: "email",
    isLoginFailed: isLoginFailed,
  );

  // return Container(
  //   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
  //   child: TextField(
  //     controller: controller,
  //     enabled: true,
  //     decoration: InputDecoration(
  //       hintText: 'email',
  //       contentPadding: EdgeInsets.all(8.0),
  //       border: OutlineInputBorder(
  //         borderRadius: BorderRadius.all(Radius.circular(8.0)),
  //         borderSide: BorderSide(
  //           color: isLoginFailed ? Colors.red : Colors.blue,
  //         ),
  //       ),

  //       enabledBorder: OutlineInputBorder(
  //         borderRadius: BorderRadius.all(Radius.circular(8.0)),
  //         borderSide: BorderSide(
  //           color: isLoginFailed ? Colors.red : Colors.blue,
  //           width: 2,
  //         ),
  //       ),
  //     ),
  //   ),
  // );
}

Widget _passwordField(TextEditingController controller, bool isLoginFailed) {
  return _inputField(
    controller: controller,
    hint: "password",
    isLoginFailed: isLoginFailed,
    obscure: true,
  );
  // return Container(
  //   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
  //   child: TextField(
  //     controller: controller,
  //     obscureText: true,
  //     enabled: true,
  //     decoration: InputDecoration(
  //       hintText: 'password',
  //       contentPadding: EdgeInsets.all(8.0),
  //       border: OutlineInputBorder(
  //         borderRadius: BorderRadius.all(Radius.circular(8.0)),
  //         borderSide: BorderSide(
  //           color: isLoginFailed ? Colors.red : Colors.blue,
  //         ),
  //       ),
  //       enabledBorder: OutlineInputBorder(
  //         borderRadius: BorderRadius.all(Radius.circular(8.0)),
  //         borderSide: BorderSide(
  //           color: isLoginFailed ? Colors.red : Colors.blue,
  //           width: 2.0,
  //         ),
  //       ),
  //     ),
  //   ),
  // );
}

Widget _inputField({
  required TextEditingController controller,
  required String hint,
  required bool isLoginFailed,
  bool obscure = false,
}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: TextField(
      controller: controller,
      obscureText: obscure,
      enabled: true,
      decoration: InputDecoration(
        hintText: hint,
        contentPadding: EdgeInsets.all(8.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: Colors.blue),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(
            color: isLoginFailed ? Colors.red : Colors.blue,
            width: 2.0,
          ),
        ),
      ),
    ),
  );
}
