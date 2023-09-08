import 'package:flutter/material.dart';

// class BarItem {
//   /// Selected or active icon must be filled icon and complementary to inactive icon.
//   final IconData filledIcon;
//   final String btext;
//   /// Normal or inactive icon must be outlined icon and complementary to active icon.
//   final IconData outlinedIcon;
//   BarItem({
//     required this.filledIcon,
//     required this.outlinedIcon,
//     required this.btext,
//   });
// }



class BarItem {
  /// Selected or active icon must be filled icon and complementary to inactive icon.
  final Widget filledIcon;
  /// Navigation  text .
  final String text;
  /// Normal or inactive icon must be outlined icon and complementary to active icon.
  final Widget outlinedIcon;
  /// Navigation text textStyle .
  final TextStyle textStyle;
  BarItem({
    required this.filledIcon,
    required this.outlinedIcon,
    required this.text,
    TextStyle? textStyle,
  }):textStyle = textStyle ?? const TextStyle();
}