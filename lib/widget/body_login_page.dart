import 'package:flutter/material.dart';
import 'package:music_app/constans.dart';
import 'package:music_app/views/create_accoun_page.dart';
import 'package:music_app/widget/custom_buttom.dart';
import 'package:music_app/widget/custom_icon.dart';
import 'package:music_app/widget/custom_image.dart';
import 'package:music_app/widget/custom_text_feild.dart';

class BodyLoginPage extends StatefulWidget {
  const BodyLoginPage({super.key});

  @override
  State<BodyLoginPage> createState() => _BodyLoginPageState();
}

class _BodyLoginPageState extends State<BodyLoginPage> {
  bool showpass = false;

  _BodyLoginPageState();
  showPassword() {
    setState(() {
      showpass = !showpass;
    });
  }

  bool checkThebox = false;
  check() {
    setState(() {
      checkThebox = !checkThebox;
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
        padding: EdgeInsets.only(
            right: 20,
            left: 20,
            bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Image.asset(
              kImage,
              color: kColorgreen,
              width: 350,
            ),
            const SizedBox(
              height: 40,
            ),
            const CustomFormTextField(
              hintText: "Email or Username",
              obscureText: false,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomFormTextField(
              onPressed: showPassword,
              obscureText: showpass ? false : true,
              icon: showpass ? Icons.visibility_off : Icons.visibility,
              hintText: "Password",
            ),
            const SizedBox(
              height: 20,
            ),
            Row(children: [
              Theme(
                data: ThemeData(unselectedWidgetColor: Colors.grey[600]),
                child: Checkbox(
                    checkColor: Colors.white,
                    value: checkThebox ? true : false,
                    onChanged: (value) {
                      check();
                    }),
              ),
              const Text(
                "Remeber Me",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              const Text(
                "Forgot Password?",
                style: TextStyle(
                    color: kColorgreen,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ]),
            const SizedBox(
              height: 30,
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
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return const CreateAccountPage();
                })));
              },
              child: const Text(
                "Don't have an account?",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
