import 'package:flutter/material.dart';
import 'package:raduios/view/widgets/appbar_widget.dart';

import '../../utils/form_style_utils.dart';
import '../../utils/text_style_utils.dart';
import '../widgets/custome_button_widget.dart';
import './forgot_screen_two.dart';

class ForgotScreenOne extends StatelessWidget {
  static const routeName = '/forgot-screen-one';

  const ForgotScreenOne({super.key});

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
              const Text(
                'Enter Email Address',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextFormField(
                  style: st7A869A40014,
                  decoration: inputDecorationWithBorder.copyWith(
                    hintText: 'Enter Email',
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              CustomButtonWidget(
                title: 'Continue',
                isMargin: true,
                callback: () => Navigator.of(context)
                    .pushReplacementNamed(ForgotScreenTwo.routeName),
              )
            ],
          )
        ],
      ),
    );
  }
}
