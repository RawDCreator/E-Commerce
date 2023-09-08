import 'package:flutter/material.dart';
import 'package:raduios/utils/color_utils.dart';
import 'package:raduios/utils/image_utils.dart';
import '../screens/home_screen.dart';
import './more_screen.dart';
import '../widgets/customNav/advance_water_drop_nav_bar.dart' as cus;

import './cart_screen.dart';
import './order_detail_screen.dart';

class NavScreen extends StatefulWidget {
  static const routeName = 'nav-screen';
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  PageController pageController = PageController();
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const [
          HomeScreen(),
          OrderDetailScreen(),
          CartScreen(),
          MoreScreen(),
        ],
      ),
      bottomNavigationBar: cus.WaterDropNavBar(
        backgroundColor: Colors.white,
        onItemSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
          pageController.animateToPage(selectedIndex,
              duration: const Duration(microseconds: 500),
              curve: Curves.easeOut);
        },
        selectedIndex: selectedIndex,
        barItems: [
          cus.BarItem(
            filledIcon: Image.asset(
              imgHome,
              color: kc979797,
            ),
            outlinedIcon: Image.asset(imgHome,
                color: selectedIndex == 0 ? kcPrimaryColor : kc979797),
            text: 'Home',
          ),
          cus.BarItem(
            filledIcon: Image.asset(imgQuickOrder),
            outlinedIcon: Image.asset(
              imgQuickOrder,
              color: selectedIndex == 1 ? kcPrimaryColor : kc979797,
            ),
            text: 'Orders',
          ),
          cus.BarItem(
            filledIcon: Image.asset(imgCart),
            outlinedIcon: Image.asset(imgCart,
                color: selectedIndex == 2 ? kcPrimaryColor : kc979797),
            text: 'Cart',
          ),
          cus.BarItem(
            filledIcon: Image.asset(imgMore),
            outlinedIcon: Image.asset(
              imgMore,
              color: selectedIndex == 3 ? kcPrimaryColor : kc979797,
            ),
            text: 'More',
          ),
        ],
      ),
    );
  }
}
