import 'package:flutter/material.dart';
import 'package:music_app/constans.dart';

class CustomFormTextField extends StatelessWidget {
  const CustomFormTextField({
    required this.hintText,
    this.onPressed,
    this.obscureText = false,
    this.icon,
    Key? key,
  }) : super(key: key);

  final String hintText;
  final void Function()? onPressed;
  final bool obscureText;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey[600]!.withOpacity(.5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextFormField(
              validator: (data) {
                if (data!.isEmpty) {
                  return 'Field is required';
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.white.withOpacity(.7),
                ),
              ),
              obscureText: obscureText,
            ),
          ),
          IconButton(
            onPressed: onPressed,
            icon: Icon(icon),
            color: kColor,
          ),
        ],
      ),
    );
  }
}
