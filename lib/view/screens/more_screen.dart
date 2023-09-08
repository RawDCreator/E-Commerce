import 'package:flutter/material.dart';
import 'package:raduios/view/widgets/appbar_widget.dart';

import '../../utils/color_utils.dart';
import '../../utils/image_utils.dart';
// import '../../utils/text_style_utils.dart';
import '../screens/profile_screen.dart';

class MoreScreen extends StatelessWidget {
  static const routeName = '/more-screen';
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: noAppbar(),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 15, left: 25, right: 25),
            child: Row(
              children: [
                Spacer(),
                // Container(
                //   padding: const EdgeInsets.all(4),
                //   decoration: BoxDecoration(
                //       color: kcFEF3F2, borderRadius: BorderRadius.circular(16)),
                //   child: Row(
                //     children: [
                //       Image.asset(imgAu),
                //       const SizedBox(width: 6),
                //       Text('15 Points',
                //           style: st10182850012.copyWith(color: kcB42318))
                //     ],
                //   ),
                // ),
                SizedBox(width: 11),
                Icon(
                  Icons.notifications_active,
                  color: kcPrimaryColor,
                ),
              ],
            ),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'More',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: kclightGrey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white10,
                  child: Image.asset(imgProfile),
                ),
                title: const Text(
                  'Profile',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                trailing: const Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.of(context).pushNamed(ProfileScreen.routeName);
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
                  child: Image.asset(imgOrder),
                ),
                title: const Text(
                  'Privacy Policy',
                  style: TextStyle(fontWeight: FontWeight.w500),
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
                  child: Image.asset(imgCredit),
                ),
                title: const Text(
                  'Credit Limit',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: const Text(
                  'Coming Soon',
                  style: TextStyle(color: Colors.redAccent),
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
                  child: Image.asset(imgExposure),
                ),
                title: const Text(
                  'Exposure History',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: const Text(
                  'Coming Soon',
                  style: TextStyle(color: Colors.redAccent),
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
                  child: Image.asset(imgProgress),
                ),
                title: const Text(
                  'Progress Score',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: const Text(
                  'Coming Soon',
                  style: TextStyle(color: Colors.redAccent),
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
                  child: Image.asset(imgActive),
                ),
                title: const Text(
                  'Active User Bonuses',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: const Text(
                  'Coming Soon',
                  style: TextStyle(color: Colors.redAccent),
                ),
                trailing: const Icon(Icons.arrow_right),
                onTap: () {},
              ),
            ),
            const SizedBox(height: 100),
            Container(
              alignment: Alignment.center,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: kcPrimaryColor,
                    fixedSize: const Size(360, 55),
                    alignment: Alignment.centerLeft),
                onPressed: () {
                  showModal(context);
                },
                icon: const Icon(Icons.phonelink_erase),
                label: const Text('Logout'),
              ),
            ),
            const SizedBox(height: 30),
          ]),
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
