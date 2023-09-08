import 'package:flutter/material.dart';
import 'package:raduios/utils/color_utils.dart';
import 'package:raduios/utils/text_style_utils.dart';

class CustomButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback callback;
  final Color bgColor;
  final Color textColr;
  final bool isMargin;

  const CustomButtonWidget({
    required this.title,
    required this.callback,
    this.bgColor = kcPrimaryColor,
    this.textColr = kcWhite,
    this.isMargin = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        margin: isMargin ? const EdgeInsets.symmetric(horizontal: 20) : null,
        alignment: Alignment.center,
        height: 44,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: bgColor, borderRadius: BorderRadius.circular(15)),
        child: Text(
          title,
          style: st170A2E50016.copyWith(color: textColr),
        ),
      ),
    );
  }
}
