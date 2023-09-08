import 'package:flutter/material.dart';
import 'package:raduios/utils/color_utils.dart';
import 'package:raduios/utils/image_utils.dart';
import 'package:raduios/utils/text_style_utils.dart';
import 'package:raduios/view/screens/auth/signup_screen.dart';
import 'package:raduios/view/widgets/custome_button_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController pageController1 = PageController();
  PageController pageController2 = PageController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: size * 0.65,
            decoration: const BoxDecoration(
              color: kcF6FFF6,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(80),
                bottomRight: Radius.circular(80),
              ),
            ),
            child: Column(
              children: [
                Expanded(
                  child: PageView(
                    controller: pageController1,
                    onPageChanged: (index) {
                      setState(() {
                        pageController2.jumpTo(pageController1.offset);

                        currentPage = index;
                      });
                    },
                    children: onboardingData
                        .map((e) => Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const SizedBox(height: 20),
                                Image.asset(e.image),
                              ],
                            ))
                        .toList(),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(onboardingData.length,
                        (index) => createCircle(index: index)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: size * 0.1,
            child: PageView(
              controller: pageController2,
              onPageChanged: (index) {
                setState(() {
                  pageController1.jumpTo(pageController2.offset);

                  currentPage = index;
                });
              },
              children: onboardingData
                  .map((e) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              e.title,
                              style: stBlack70020,
                              textAlign: TextAlign.center,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30.0),
                              child: Text(
                                e.content,
                                style: st55555540012,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ),
          currentPage == 2
              ? CustomButtonWidget(
                  title: 'Create account',
                  isMargin: true,
                  callback: () =>
                      Navigator.of(context).pushNamed(SignupScreen.routeName))
              : TextButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed(SignupScreen.routeName),
                  child: const Text(
                    'SKIP',
                    style: stPrimaryColor40012Popins,
                  ))
        ],
      ),
    );
  }

  createCircle({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      margin: const EdgeInsets.only(right: 6),
      height: 6,
      width: currentPage == index ? 24 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kcPrimaryColor : kcC4C4C4,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}

class OnboardingData {
  final String image;
  final String title;
  final String content;

  OnboardingData(this.image, this.title, this.content);
}

List<OnboardingData> onboardingData = [
  OnboardingData(
    imgOnboard1,
    'Choose Your Favorite Drink',
    'Find your favorite drink anytime from your existing location easily',
  ),
  OnboardingData(
    imgOnboard2,
    'Get large orders at the best prices',
    'Get the best offers from all our ranges of brand, simple and quick user experiences',
  ),
  OnboardingData(
    imgOnboard3,
    'Fastest Delivery Ever',
    'Because chilled drinks are always better',
  ),
];
