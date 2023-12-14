import 'package:flutter/material.dart';
import 'package:music_app/constans.dart';
import 'package:music_app/views/create_accoun_page.dart';
import 'package:music_app/views/login_page.dart';
import 'package:music_app/widget/custom_buttom.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(kImage, color: kColorgreen),
            const SizedBox(
              height: 90,
            ),
            CustomButtom(
              text: "Sign In ",
              color: Colors.white,
              ontap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const LoginPage();
                }));
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButtom(
              text: "Crate an account ",
              color: kColorgreen,
              ontap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const CreateAccountPage();
                }));
              },
            )
          ],
        ),
      ),
    );
  }
}
