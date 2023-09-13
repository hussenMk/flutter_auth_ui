import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/constant/color.dart';
import 'package:flutter_auth_ui/constant/image_asset.dart';
import 'package:flutter_auth_ui/view/widget/welcome/custom_button_welcome.dart';
import 'package:flutter_auth_ui/view/widget/welcome/custom_list_tile_welcome.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: AppColor.lightGrey,
        body: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            const SizedBox(height: 80),
            Image.asset(
              ImageAsset.logo,
              height: 250,
            ),
            const SizedBox(height: 0),
            const CustomListTileWelcome(),
            const SizedBox(height: 20),
            CustomButtonWelcome(size: size),
          ],
        ),
      ),
    );
  }
}
