import 'package:flutter/material.dart';
import 'package:raduios/utils/color_utils.dart';
import 'package:raduios/utils/form_style_utils.dart';
import 'package:raduios/utils/image_utils.dart';
import 'package:raduios/utils/text_style_utils.dart';
import 'package:raduios/view/screens/auth/signup_screen.dart';
import 'package:raduios/view/widgets/appbar_widget.dart';
import 'package:raduios/view/widgets/custome_button_widget.dart';
import '../forgot_screen_one.dart';

class SigninScreen extends StatefulWidget {
  static const routeName = 'signin-screen';
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcWhite,
      appBar: noAppbar(),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: kcD9D9D9,
              ),
              SizedBox(height: 40),
              Text("Let's Sign You In", style: st1E1E1E70024),
              Text("Welcome back, you've been missed!", style: st7A869A40014),
            ],
          ),
          const SizedBox(height: 44),
          const Text('Trading Name', style: stC1C7D050014),
          const SizedBox(height: 5),
          TextFormField(
            style: st7A869A40014,
            decoration: inputDecoration.copyWith(
                hintText: 'Enter Trading name',
                prefixIcon: Image.asset(
                  imgMail,
                  color: kcC1C7D0,
                )),
          ),
          const SizedBox(height: 20),
          const Text('Password', style: stC1C7D050014),
          const SizedBox(height: 5),
          TextFormField(
            obscureText: true,
            obscuringCharacter: '*',
            style: st7A869A40014,
            decoration: inputDecoration.copyWith(
                hintText: '• • • • • • • • • • • • • ',
                prefixIcon: const Icon(
                  Icons.lock_outline,
                  color: kcC1C7D0,
                )),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Transform.translate(
              offset: const Offset(10, 0),
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(ForgotScreenOne.routeName);
                  },
                  child: const Text(
                    'Forgot Password',
                    style: st10182850012,
                  )),
            ),
          ),
          const SizedBox(height: 40),
          CustomButtonWidget(
            title: 'Sign In',
            callback: () {},
          ),
          const SizedBox(height: 10),
          CustomButtonWidget(
            title: 'Create an account',
            bgColor: kcF4F5F7,
            textColr: kc1E1E1E,
            callback: () =>
                Navigator.of(context).pushNamed(SignupScreen.routeName),
          )
        ],
      ),
    );
  }
}
