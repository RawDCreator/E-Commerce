import 'package:flutter/material.dart';
import 'package:raduios/utils/color_utils.dart';
import 'package:raduios/utils/text_style_utils.dart';

final inputDecoration = InputDecoration(
  filled: true,
  hintStyle: st7A869A40014.copyWith(color: kc7A869A.withOpacity(0.5)),
  fillColor: kcF4F5F7,
  isDense: true,
  contentPadding: const EdgeInsets.all(18),
  enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none),
  focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none),
  errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: kcPrimaryColor)),
);

final inputDecorationWithBorder = InputDecoration(
  // filled: true,
  hintStyle: st7A869A40014.copyWith(color: kc7A869A.withOpacity(0.5)),
  // fillColor: kcWhite,
  isDense: true,
  contentPadding: const EdgeInsets.all(18),
  enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: kcE1E5E4)),
  focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: kcE1E5E4)),
  errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: kcPrimaryColor)),
);
