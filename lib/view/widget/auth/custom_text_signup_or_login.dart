import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/constant/color.dart';

class CustomTextSignUpOrLogin extends StatelessWidget {
  final String textOne;
  final String textTwo;
  final void Function()? onPressed;
  const CustomTextSignUpOrLogin(
      {Key? key, required this.textOne, required this.textTwo, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textOne,
          style: const TextStyle(color: Colors.black),
        ),
        TextButton(
            onPressed: onPressed,
            child: Text(
              textTwo,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColor.blue2,
              ),
            ))
      ],
    );
  }
}
