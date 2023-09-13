import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/constant/image_asset.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ImageAsset.logo,
      height: 250,
      color: Colors.white,
    );
  }
}
