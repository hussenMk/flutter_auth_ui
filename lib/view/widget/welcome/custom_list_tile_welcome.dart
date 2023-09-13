import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/constant/color.dart';

class CustomListTileWelcome extends StatelessWidget {
  const CustomListTileWelcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text(
        "مرحبا بك",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: AppColor.darkBlue,
        ),
      ),
      subtitle: Text(
        "في منصة دوائي حيث سهولة الوصول إلى وكالات الأدوية وشركات الأدوية داخل اليمن",
        textAlign: TextAlign.center,
        style: TextStyle(),
      ),
    );
  }
}
