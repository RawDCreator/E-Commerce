import 'package:flutter/material.dart';
import './order_detail_screen.dart';
import 'package:raduios/view/widgets/appbar_widget.dart';

import '../../utils/color_utils.dart';
import '../../utils/image_utils.dart';
import './edit_profile_screen.dart';

class MyAccountScreen extends StatelessWidget {
  static const routeName = '/account-screen';

  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: noAppbar(),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: [
                IconButton(
                  iconSize: 40,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.keyboard_arrow_left),
                ),
                const SizedBox(
                  width: 80,
                ),
                const Text(
                  'My Account',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: kclightGrey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    imgImage,
                    fit: BoxFit.contain,
                    height: 80,
                  ),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Beer Barn',
                      style:
                          TextStyle(fontSize: 27, fontWeight: FontWeight.w600),
                    ),
                    const Text(
                      'wearebeerbarn@gmail.com',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        Image.asset(imgPhon),
                        const SizedBox(width: 10),
                        const Text(
                          '+234 8144628913',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w300),
                        )
                      ],
                    )
                  ],
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(EditProfileScreen.routeName);
                  },
                  child: Image.asset(
                    imgEdit,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'QUICK LINKS',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: kclightGrey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white10,
                    child: Image.asset(imgHist),
                  ),
                  title: const Text(
                    'Order History',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  trailing: const Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(OrderDetailScreen.routeName);
                  },
                ),
              ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: kclightGrey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white10,
                    child: Image.asset(imgLang),
                  ),
                  title: const Text(
                    'Change Language',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  trailing: const Icon(Icons.arrow_right),
                  onTap: () {},
                ),
              ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: kclightGrey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white10,
                    child: Image.asset(imgRewa),
                  ),
                  title: const Text(
                    'Reward',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  trailing: const Icon(Icons.arrow_right),
                  onTap: () {},
                ),
              ),
              const SizedBox(height: 100),
              Container(
                alignment: Alignment.center,
                child: TextButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: kcF6FFF6,
                      fixedSize: const Size(360, 55),
                      alignment: Alignment.center),
                  onPressed: () {},
                  child: const Text(
                    'Delete Account',
                    style: TextStyle(color: kcPrimaryColor, fontSize: 17),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                alignment: Alignment.center,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: kcPrimaryColor,
                      fixedSize: const Size(360, 55),
                      alignment: Alignment.center),
                  onPressed: () {
                    showModal(context);
                  },
                  icon: const Icon(Icons.phonelink_erase),
                  label: const Text(
                    'Logout',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          )
        ],
      ),
    );
  }

  Future<dynamic> showModal(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)), //this right here
            child: SizedBox(
              height: 350,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(imgLogOut),
                    const SizedBox(height: 25),
                    const Text(
                      'Logout',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      textAlign: TextAlign.center,
                      'Are you sure you want to logout from this account',
                      style: TextStyle(fontSize: 15),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        SizedBox(
                          width: 320.0,
                          height: 50,
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: kcPrimaryColor,
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Text(
                                'Logout',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: 320.0,
                          height: 50,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              width: 300,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 1),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Text(
                                'Cancel',
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
