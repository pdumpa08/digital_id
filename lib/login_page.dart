import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'services/auth_service.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Page')),
      body: Center(
        child: FloatingActionButton.extended(
          onPressed: () {
            AuthService().signInWithGoogle();
          },
          icon: const Icon(Icons.security),
          label: const Text('Sign in with Google'),
          backgroundColor: Colors.amber,
          foregroundColor: Colors.white,
        ),
      ),
    );
  }
}
