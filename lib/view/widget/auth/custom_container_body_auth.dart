import 'package:flutter/material.dart';

class CustomContainerBodyAuth extends StatelessWidget {
  const CustomContainerBodyAuth({Key? key, this.child}) : super(key: key);

  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 450,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        width: double.infinity,
        padding: const EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: 30,
                spreadRadius: 10,
                color: Colors.black.withOpacity(0.4))
          ],
          border: Border.all(color: Colors.white.withOpacity(0.3), width: 1.5),
          color: Colors.white.withOpacity(0.7),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: child);
  }
}
