import 'package:flutter/material.dart';
import 'package:raduios/utils/color_utils.dart';
import 'package:raduios/utils/text_style_utils.dart';

import 'icon_clipper.dart';

class BuildIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final AnimationController controller;
  final Widget selectedIcon;
  final Widget unslectedIcon;
  final int seletedIndex;
  final int index;
  final Color color;
  final double iconSize;
  final Color inactiveColor;
  final Color barColor;
  final double bottomPadding;
  final double barHeight;
  final String btext;

  double _bottomIconScale() => seletedIndex == index
      ? Tween<double>(begin: 1.0, end: 0.7)
          .animate(
            CurvedAnimation(
              parent: controller,
              curve: const Interval(0.55, 1.0),
            ),
          )
          .value
      : 1.0;

  double _topIconScale() => Tween<double>(begin: 0.7, end: 1.0)
      .animate(
        CurvedAnimation(
          parent: controller,
          curve: const Interval(0.55, 1.0),
        ),
      )
      .value;

  double _clipRadius() => Tween<double>(begin: 0, end: 30)
      .animate(
        CurvedAnimation(
          parent: controller,
          curve: const Interval(0.60, 1.0),
        ),
      )
      .value;

  const BuildIconButton({
    required this.onPressed,
    required this.controller,
    required this.selectedIcon,
    required this.unslectedIcon,
    required this.index,
    required this.seletedIndex,
    required this.color,
    required this.iconSize,
    required this.inactiveColor,
    required this.barColor,
    required this.bottomPadding,
    required this.barHeight,
    required this.btext,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    final double deviceWidth = mediaQueryData.size.width;
    final double maxElementWidth = deviceWidth / 4;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: maxElementWidth,
        height: barHeight,
        padding: EdgeInsets.only(bottom: bottomPadding),
        decoration: BoxDecoration(
            color: barColor,
            border: const Border(top: BorderSide(color: kcEAECF0))),
        child: Stack(
          // fit: StackFit.expand,
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Transform.scale(
              scale: _bottomIconScale(),
              child: Opacity(
                  opacity: controller.value > 0.8 && seletedIndex == index
                      ? 0.0
                      : 1.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      unslectedIcon,
                      //  Icon(
                      // unslectedIcon,
                      // size: iconSize,
                      // color: inactiveColor,
                      // ),
                      Text(
                        btext,
                        style: stPrimaryColor40012Popins.copyWith(
                            fontSize: 8, color: kc979797),
                      ),
                    ],
                  )),
            ),
            Transform.scale(
              scale: _topIconScale(),
              child: ClipOval(
                clipper: IconClipper(
                  radius: _clipRadius(),
                ),
                child: Opacity(
                    opacity: controller.value > 0.6 && seletedIndex == index
                        ? 1.0
                        : 0.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        unslectedIcon,
                        Text(
                          btext,
                          style:
                              stPrimaryColor40012Popins.copyWith(fontSize: 8),
                        ),
                      ],
                    )
                    // Image.asset(
                    //   selectedIcon,
                    //   size: iconSize,
                    //   color: color,
                    // ),
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
