import 'package:flutter/material.dart';
import 'package:raduios/utils/color_utils.dart';
import 'package:raduios/utils/form_style_utils.dart';
import 'package:raduios/utils/text_style_utils.dart';
import 'package:raduios/view/screens/auth/select_niche_screen.dart';
import 'package:raduios/view/widgets/appbar_widget.dart';
import 'package:raduios/view/widgets/custome_button_widget.dart';

class VerifyEmailScreen extends StatelessWidget {
  static const routeName = 'verify-email-screen';
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: noAppbar(),
      body: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(20),
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.74,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _customDIvider(size, kcPrimaryColor),
                      _customDIvider(size, kcPrimaryColor),
                      _customDIvider(size, kc74675F.withOpacity(0.22)),
                    ],
                  ),
                  const SizedBox(height: 70),
                  const Text("Get Started", style: st1E1E1E50025),
                  const SizedBox(height: 20),
                  const Text(
                      "Enter the code we sent to the email address\nyou inputed to confirm it's you.",
                      style: stBlack40015),
                  const SizedBox(height: 29),
                  const Text('jereson@gmail.com', style: stBlack50020),
                  const SizedBox(height: 33),
                  Text('Enter Code',
                      style: stC1C7D050014.copyWith(color: kc000D09)),
                  const SizedBox(height: 5),
                  TextFormField(
                      style: st7A869A40014,
                      decoration: inputDecorationWithBorder),
                  Center(
                    child: TextButton(
                        onPressed: () {},
                        child: Text('Resend Code',
                            style: stBlack40015.copyWith(color: kcFF0057))),
                  ),
                ],
              ),
            ),
            CustomButtonWidget(
                title: 'Verify Email',
                callback: () {
                  Navigator.of(context).pushNamed(SelectNicheScreen.routeName);
                })
          ]),
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
