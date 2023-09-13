import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/constant/color.dart';
import 'package:flutter_auth_ui/view/widget/auth/custom_button_auth.dart';
import 'package:flutter_auth_ui/view/widget/auth/custom_container_background_auth.dart';
import 'package:flutter_auth_ui/view/widget/auth/custom_text_form_auth.dart';
import 'package:flutter_auth_ui/view/widget/auth/custom_text_signup_or_login.dart';
import 'package:flutter_auth_ui/view/widget/auth/logo_auth.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: CustomContainerBackgroundAuth(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Form(
                        child: Column(
                      children: [
                        const SizedBox(height: 50),
                        const LogoAuth(),
                        const SizedBox(height: 20),
                        Container(
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
                              border: Border.all(
                                  color: Colors.white.withOpacity(0.3),
                                  width: 1.5),
                              color: Colors.white.withOpacity(0.7),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                            ),
                            child: ListView(
                              padding: const EdgeInsets.all(0),
                              children: [
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  child: const Text(
                                    "تسجيل الدخول",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xff044b62)),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                const CustomTextFormAuth(
                                  label: 'البريد الإلكتروني',
                                  iconData: Icons.email_outlined,
                                  keyboardType: TextInputType.emailAddress,
                                ),
                                CustomTextFormAuth(
                                  label: 'كلمة المرور',
                                  keyboardType: TextInputType.visiblePassword,
                                  iconData: Icons.lock_outlined,
                                  onTapIcon: () {},
                                ),
                                InkWell(
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        'نسيت كلمة المرور ؟',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54),
                                      ),
                                    ],
                                  ),
                                  onTap: () {},
                                ),
                                const SizedBox(height: 20),
                                CustomButtonAuth(
                                  onPressed: () {},
                                  text: 'تسجيل الدخول',
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 60),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Divider(
                                  height: 25,
                                  color: AppColor.blue2,
                                  thickness: 1,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                CustomTextSignUpOrLogin(
                                  textOne: "ليس لديك حساب ؟",
                                  textTwo: "سجل الآن",
                                  onPressed: () {
                                    Navigator.of(context).pushNamed('signUp');
                                  },
                                )
                              ],
                            )),
                      ],
                    )),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
