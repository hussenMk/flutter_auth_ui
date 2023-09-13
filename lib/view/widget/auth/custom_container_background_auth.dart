import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/constant/color.dart';
import 'dart:ui';

import 'package:flutter_auth_ui/constant/image_asset.dart';

class CustomContainerBackgroundAuth extends StatelessWidget {
  final Widget? child;
  const CustomContainerBackgroundAuth({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColor.blue2,
              Colors.grey,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
          image: DecorationImage(
            colorFilter: ColorFilter.linearToSrgbGamma(),
            image: AssetImage(ImageAsset.background),
            fit: BoxFit.cover,
          )),
      child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 1.3, sigmaY: 1.3), child: child),
    );
  }
}
