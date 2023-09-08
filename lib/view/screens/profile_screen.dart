import 'package:flutter/material.dart';
import '../../utils/color_utils.dart';
import '../../utils/image_utils.dart';
// import '../../utils/text_style_utils.dart';
import '/view/widgets/appbar_widget.dart';
import './my_account_screen.dart';
import './edit_profile_screen.dart';

class ProfileScreen extends StatefulWidget {
  static const routeName = '/profile-screen';
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: noAppbar(),
      body: ListView(physics: const BouncingScrollPhysics(), children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 25),
          child: Row(
            children: [
              IconButton(
                iconSize: 40,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.keyboard_arrow_left),
              ),
              const Spacer(),
              // Container(
              //   padding: const EdgeInsets.all(4),
              //   decoration: BoxDecoration(
              //       color: kcFEF3F2, borderRadius: BorderRadius.circular(16)),
              //   child: Row(
              //     children: [
              //       Image.asset(imgAu),
              //       const SizedBox(width: 6),
              //       Text(
              //         '15 Points',
              //         style: st10182850012.copyWith(color: kcB42318),
              //       )
              //     ],
              //   ),
              // ),
              // const SizedBox(width: 11),
              const Icon(
                Icons.notifications_active,
                color: kcPrimaryColor,
              ),
            ],
          ),
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Profile',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Stack(alignment: Alignment.center, children: [
          ClipOval(
            child: Image.asset(
              imgImage,
              fit: BoxFit.contain,
              height: 100,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 155,
            height: 32,
            width: 32,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kcPrimaryColor,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(EditProfileScreen.routeName);
                },
                icon: const Icon(
                  Icons.drive_file_rename_outline,
                  size: 18,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ]),
        const SizedBox(
          height: 25,
        ),
        Column(
          children: [
            const Text('Hello,'),
            const Text(
              'Beer Barn',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: const Text(
                'MANAGEMENT',
                style: TextStyle(fontSize: 10, color: Colors.grey),
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
                  child: Image.asset(imgNoti),
                ),
                title: const Text(
                  'Notifications',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                trailing: Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                  activeColor: kcPrimaryColor,
                ),
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
                  child: Image.asset(imgInfo),
                ),
                title: const Text(
                  'My Information',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                trailing: const Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.of(context).pushNamed(MyAccountScreen.routeName);
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
              // child: ListTile(
              //   leading: CircleAvatar(
              //     backgroundColor: Colors.white10,
              //     child: Image.asset(imgPay),
              //   ),
              //   title: const Text(
              //     'Payment',
              //     style: TextStyle(fontWeight: FontWeight.w500),
              //   ),
              //   trailing: const Icon(Icons.arrow_right),
              //   onTap: () {},
              // ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: const Text(
                'SUPPORT',
                style: TextStyle(fontSize: 10, color: Colors.grey),
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
                  child: Image.asset(imgHelp),
                ),
                title: const Text(
                  'Help',
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
                  child: Image.asset(imgSupp),
                ),
                title: const Text(
                  'Support',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                trailing: const Icon(Icons.arrow_right),
                onTap: () {},
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ]),
    );
  }
}
