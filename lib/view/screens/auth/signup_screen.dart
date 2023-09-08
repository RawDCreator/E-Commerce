import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:raduios/utils/color_utils.dart';
import 'package:raduios/utils/form_style_utils.dart';
import 'package:raduios/utils/text_style_utils.dart';
import 'package:raduios/view/screens/auth/signin_screen.dart';
import 'package:raduios/view/screens/auth/verify_email_screen.dart';
import 'package:raduios/view/widgets/appbar_widget.dart';
import 'package:raduios/view/widgets/custome_button_widget.dart';

class SignupScreen extends StatefulWidget {
  static const routeName = 'signup-screen';
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kcWhite,
      appBar: noAppbar(),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(20),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _customDIvider(size, kcPrimaryColor),
              _customDIvider(size, kc74675F.withOpacity(0.22)),
              _customDIvider(size, kc74675F.withOpacity(0.22)),
            ],
          ),
          const SizedBox(height: 40),
          const Text("Get Started", style: st1E1E1E50025),
          const Text("Create a new account", style: stBlack40015),
          const SizedBox(height: 34),
          Text('Trading Name', style: stC1C7D050014.copyWith(color: kc000D09)),
          const SizedBox(height: 5),
          TextFormField(
            style: st7A869A40014,
            decoration: inputDecorationWithBorder.copyWith(
              hintText: 'Enter Trading Name',
            ),
          ),
          const SizedBox(height: 20),
          Text('Address', style: stC1C7D050014.copyWith(color: kc000D09)),
          const SizedBox(height: 5),
          TextFormField(
            style: st7A869A40014,
            decoration: inputDecorationWithBorder.copyWith(
              hintText: 'Enter Address',
            ),
          ),
          const SizedBox(height: 20),
          Text('Email', style: stC1C7D050014.copyWith(color: kc000D09)),
          const SizedBox(height: 5),
          TextFormField(
            style: st7A869A40014,
            decoration: inputDecorationWithBorder.copyWith(
              hintText: 'Enter Email',
            ),
          ),
          const SizedBox(height: 24),
          Text('Phone Number', style: stC1C7D050014.copyWith(color: kc000D09)),
          const SizedBox(height: 5),
          TextFormField(
            style: st7A869A40014,
            decoration: inputDecorationWithBorder.copyWith(
              hintText: '+234',
            ),
          ),
          const SizedBox(height: 20),
          Text('Password', style: stC1C7D050014.copyWith(color: kc000D09)),
          const SizedBox(height: 5),
          TextFormField(
            obscureText: true,
            obscuringCharacter: '*',
            style: st7A869A40014,
            decoration: inputDecorationWithBorder.copyWith(
              hintText: 'Password',
            ),
          ),
          const SizedBox(height: 20),
          Text('Confirm Password',
              style: stC1C7D050014.copyWith(color: kc000D09)),
          const SizedBox(height: 5),
          TextFormField(
            obscureText: true,
            obscuringCharacter: '*',
            style: st7A869A40014,
            decoration: inputDecorationWithBorder.copyWith(
              hintText: 'Password',
            ),
          ),
          const SizedBox(height: 40),
          CustomButtonWidget(
            title: 'Create account',
            callback: () {
              Navigator.of(context).pushNamed(VerifyEmailScreen.routeName);
            },
          ),
          const SizedBox(height: 20),
          Center(
            child: RichText(
              text: TextSpan(
                text: 'Already have an Account? ',
                style: st170A2E50016,
                children: [
                  TextSpan(
                      text: 'Login',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Navigator.of(context)
                            .pushNamed(SigninScreen.routeName),
                      style: st170A2E50016.copyWith(color: kcPrimaryColor))
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }

  SizedBox _customDIvider(double size, Color color) {
    return SizedBox(
      width: size * 0.27,
      child: Divider(
        color: color,
        thickness: 2,
      ),
    );
  }
}
