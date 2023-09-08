import 'package:flutter/material.dart';
import 'package:raduios/utils/color_utils.dart';
import 'package:raduios/utils/image_utils.dart';
import 'package:raduios/utils/text_style_utils.dart';
import 'package:raduios/view/screens/nav_screen.dart';
import 'package:raduios/view/widgets/appbar_widget.dart';
import 'package:raduios/view/widgets/custome_button_widget.dart';

class SelectNicheScreen extends StatefulWidget {
  static const routeName = 'select-niche-screen';
  const SelectNicheScreen({super.key});

  @override
  State<SelectNicheScreen> createState() => _SelectNicheScreenState();
}

class _SelectNicheScreenState extends State<SelectNicheScreen> {
  int? selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: noAppbar(),
      body: ListView(
        padding: const EdgeInsets.all(20),
        physics: const BouncingScrollPhysics(),
        children: [
          const Text('Select your niche', style: st1E1E1E50025),
          const SizedBox(height: 30),
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: nichedData.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setSelectedIndex(index);
                  },
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: kcEAECF0),
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        height: 60,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: selectedIndex == index
                                    ? kcD6BBFB
                                    : kcEAECF0),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                            ),
                            color: selectedIndex == index ? kcF9F5FF : kcWhite),
                        child: Row(
                          children: [
                            Container(
                              height: 32,
                              width: 32,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(imgFeature),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Text(
                              nichedData[index].title,
                              style: st170A2E50016.copyWith(color: kc344054),
                            ),
                            const Spacer(),
                            Icon(
                              selectedIndex == index
                                  ? Icons.check_circle
                                  : Icons.circle_outlined,
                              color:
                                  selectedIndex == index ? kc0EAE00 : kcD0D5DD,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16.0, right: 16, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 2),
                                decoration: BoxDecoration(
                                    color: kcECFDF3,
                                    borderRadius: BorderRadius.circular(16)),
                                child: Text(
                                  'can not be changed once completed',
                                  style:
                                      st10182850012.copyWith(color: kc027A48),
                                )),
                            const SizedBox(height: 16),
                            Text(
                              'Includes up to 10 users, 20GB indiviual data and access to all features.',
                              style: st7A869A40014.copyWith(color: kc667085),
                            ),
                          ],
                        ),
                      )
                    ]),
                  ),
                );
              }),
          const SizedBox(height: 40),
          CustomButtonWidget(
              title: 'Continue',
              callback: () {
                Navigator.of(context).pushNamed(NavScreen.routeName);
              })
        ],
      ),
    );
  }

  void setSelectedIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}

class NicheData {
  final String title;

  NicheData(
    this.title,
  );
}

List<NicheData> nichedData = [
  NicheData('Walk-in'),
  NicheData('Outlets'),
  NicheData('Offprem-Stores'),
  NicheData('Sub-Distribution'),
  NicheData('Key Account'),
  NicheData('Modern Trade'),
];
