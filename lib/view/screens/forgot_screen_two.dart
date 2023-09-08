import 'package:flutter/material.dart';

import '../../utils/color_utils.dart';
import '../../utils/form_style_utils.dart';
import '../../utils/image_utils.dart';
import '../../utils/text_style_utils.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/custome_button_widget.dart';
import './forgot_screen_three.dart';

class ForgotScreenTwo extends StatelessWidget {
  static const routeName = '/forgot-screen-two';
  const ForgotScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: noAppbar(),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: Row(
              children: [
                IconButton(
                  iconSize: 40,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.keyboard_arrow_left),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'A reminder has been sent to this email along with a code to change your password if you wish to',
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'beerbarn@gmail.com',
                    style: TextStyle(
                        color: kcPrimaryColor,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(imgEditMail),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Enter Code'),
                    const SizedBox(height: 10),
                    TextFormField(
                      style: st7A869A40014,
                      decoration: inputDecorationWithBorder.copyWith(
                        hintText: 'Code',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              CustomButtonWidget(
                title: 'Verify',
                isMargin: true,
                callback: () => Navigator.of(context)
                    .pushReplacementNamed(ForgotScreenThree.routeName),
              ),
            ],
          )
        ],
      ),
    );
  }
}
