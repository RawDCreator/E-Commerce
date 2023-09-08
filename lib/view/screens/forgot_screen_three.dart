import 'package:flutter/material.dart';
import 'package:raduios/utils/image_utils.dart';

import '../../utils/form_style_utils.dart';
import '../../utils/text_style_utils.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/custome_button_widget.dart';
import 'auth/signin_screen.dart';

class ForgotScreenThree extends StatelessWidget {
  static const routeName = '/forgot-screen-three';
  const ForgotScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: noAppbar(),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 70),
          Column(
            children: [
              Image.asset(
                imgPassword,
                width: 400,
              ),
              const Text(
                'input your new password',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('New Password'),
                    const SizedBox(height: 10),
                    TextFormField(
                      style: st7A869A40014,
                      decoration: inputDecorationWithBorder.copyWith(
                        hintText: 'Password',
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text('Confirm Password'),
                    const SizedBox(height: 10),
                    TextFormField(
                      style: st7A869A40014,
                      decoration: inputDecorationWithBorder.copyWith(
                        hintText: 'Password',
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    CustomButtonWidget(
                      title: 'Continue',
                      isMargin: true,
                      callback: () {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            backgroundColor: Colors.white,
                            content: Text(
                              'Password Changed',
                              style: TextStyle(color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                            duration: Duration(
                              seconds: 2,
                            ),
                          ),
                        );
                        Navigator.of(context)
                            .pushReplacementNamed(SigninScreen.routeName);
                      },
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
