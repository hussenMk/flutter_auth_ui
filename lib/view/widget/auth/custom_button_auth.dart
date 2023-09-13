import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/constant/color.dart';

class CustomButtonAuth extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final EdgeInsetsGeometry? padding;
  const CustomButtonAuth(
      {Key? key, this.onPressed, required this.text, required this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: padding,
      onPressed: onPressed,
      color: AppColor.blue2,
      textColor: AppColor.white,
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
