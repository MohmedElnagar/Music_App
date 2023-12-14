import 'package:flutter/material.dart';
import 'package:music_app/constans.dart';
import 'package:music_app/views/login_page.dart';
import 'package:music_app/widget/custom_buttom.dart';
import 'package:music_app/widget/custom_icon.dart';
import 'package:music_app/widget/custom_image.dart';
import 'package:music_app/widget/custom_text_feild.dart';

class CreateAnOccount extends StatefulWidget {
  const CreateAnOccount({super.key});

  @override
  State<CreateAnOccount> createState() => _CreateAnOccountState();
}

class _CreateAnOccountState extends State<CreateAnOccount> {
  bool showpass = false;

  _CreateAnOccountState();
  showPassword() {
    setState(() {
      showpass = !showpass;
    });
  }

  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Image.asset(
              kImage,
              color: kColorgreen,
              width: 350,
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomFormTextField(
              hintText: "Name",
              obscureText: false,
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomFormTextField(
              hintText: "Email or Username",
              obscureText: false,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomFormTextField(
              onPressed: showPassword,
              obscureText: showpass ? false : true,
              icon: showpass ? Icons.visibility_off : Icons.visibility,
              hintText: "Password",
            ),
            const SizedBox(
              height: 12,
            ),
            CustomFormTextField(
              onPressed: showPassword,
              obscureText: showpass ? false : true,
              icon: showpass ? Icons.visibility_off : Icons.visibility,
              hintText: "Confirm Password",
            ),
            const SizedBox(
              height: 25,
            ),
            CustomButtom(text: "Sign In", color: kColorgreen, ontap: () {}),
            const SizedBox(height: 5),
            const Text(
              "Or Sign In With",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 50,
                ),
                const CustomImage(
                  image: "assets/google.png",
                ),
                const SizedBox(
                  width: 24,
                ),
                const CustomImage(
                  image: "assets/facebook.png",
                ),
                const SizedBox(
                  width: 24,
                ),
                CustomIcon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.apple,
                      color: Colors.grey[600],
                    )),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account? ",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const LoginPage();
                    }));
                  },
                  child: const Text(
                    "LOG IN ",
                    style: TextStyle(color: kColorgreen, fontSize: 15),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
