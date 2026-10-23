import 'package:flutter/material.dart';
import 'package:gstore/forms/loginform.dart';
import 'package:gstore/components/logoContainer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF12131C),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight - 48.0,
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Logocontainer(),
                    SizedBox(height: 28.0),
                    LoginForm(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}