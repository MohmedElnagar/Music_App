import 'package:flutter/material.dart';
import 'package:music_app/constans.dart';
import 'package:music_app/widget/body_login_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kColor,
      body: BodyLoginPage(),
    );
  }
}
