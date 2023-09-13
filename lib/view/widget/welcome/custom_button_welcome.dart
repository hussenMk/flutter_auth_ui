import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/constant/color.dart';

class CustomButtonWelcome extends StatelessWidget {
  const CustomButtonWelcome({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.of(context).pushReplacementNamed('login');
      },
      textColor: Colors.white,
      padding: const EdgeInsets.all(0),
      child: Container(
        alignment: Alignment.center,
        height: 40.0,
        width: size.width * 0.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: const LinearGradient(
            colors: [
              AppColor.darkBlue,
              AppColor.blue2,
            ],
          ),
        ),
        padding: const EdgeInsets.all(0),
        child: const Text(
          "البدء",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: AppColor.white, fontSize: 17),
        ),
      ),
    );
  }
}
