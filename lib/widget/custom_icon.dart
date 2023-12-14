import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  final void Function()? onPressed;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(8)),
      child: Center(
          child: IconButton(
        iconSize: 50,
        onPressed: onPressed,
        icon: icon,
      )),
    );
  }
}
