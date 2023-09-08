import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:raduios/routes.dart';
import 'package:raduios/utils/color_utils.dart';
import 'package:raduios/view/screens/onboarding_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Raduios',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'DM Sans', primaryColor: kcPrimaryColor),
      home: const OnboardingScreen(),
      // home: NavScreen(),
      routes: routes,
    );
  }
}
