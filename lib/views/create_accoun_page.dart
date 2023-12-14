import 'package:flutter/material.dart';
import 'package:music_app/constans.dart';
import 'package:music_app/widget/crate_an_account.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kColor,
      body: CreateAnOccount(),
    );
  }
}
