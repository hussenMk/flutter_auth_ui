import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/constant/color.dart';
import '../../widget/auth/custom_container_background_auth.dart';
import '../../widget/auth/custom_button_auth.dart';
import '../../widget/auth/custom_text_signup_or_login.dart';
import '../../widget/auth/custom_text_form_auth.dart';
import '../../widget/auth/logo_auth.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

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
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              width: double.infinity,
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
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
                                        horizontal: 10, vertical: 15),
                                    child: const Text(
                                      "تسجيل حساب",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800,
                                          color: AppColor.darkBlue),
                                    ),
                                  ),
                                  const CustomTextFormAuth(
                                    label: 'اسم المستخدم',
                                    iconData: Icons.person_outline,
                                    keyboardType: TextInputType.name,
                                  ),
                                  const CustomTextFormAuth(
                                    label: 'البريد الإلكتروني',
                                    iconData: Icons.email_outlined,
                                    keyboardType: TextInputType.emailAddress,
                                  ),
                                  const CustomTextFormAuth(
                                    label: 'كلمة المرور',
                                    keyboardType: TextInputType.visiblePassword,
                                    iconData: Icons.lock_outlined,
                                  ),
                                  CustomButtonAuth(
                                    onPressed: () {
                                      Navigator.of(context).pushNamed('login');
                                    },
                                    text: 'تسجيل',
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
                                    textOne: "لديك حساب ؟",
                                    textTwo: "سجل الدخول",
                                    onPressed: () {
                                      Navigator.of(context).pushNamed('login');
                                    },
                                  )
                                ],
                              )),
                        ],
                      )),
                    ),
                  ],
                ),
              ))),
    );
  }
}
