import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/constant/color.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String label;
  final IconData iconData;
  final bool? obscureText;

  final TextInputType? keyboardType;
  final void Function()? onTapIcon;
  const CustomTextFormAuth(
      {Key? key,
      required this.label,
      required this.iconData,
      this.obscureText,
      this.keyboardType,
      this.onTapIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: TextFormField(
          keyboardType: keyboardType,
          decoration: InputDecoration(
            label: Text(label),
            labelStyle: const TextStyle(color: AppColor.darkBlue),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            suffixIcon: InkWell(
              onTap: onTapIcon,
              child: Icon(
                iconData,
                color: AppColor.darkBlue,
              ),
            ),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: AppColor.blue2,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: AppColor.blue2,
              ),
            ),
          ),
        ));
  }
}
