import 'package:flutter/material.dart';
import 'package:raduios/view/widgets/appbar_widget.dart';

import '../../utils/color_utils.dart';
import '../../utils/form_style_utils.dart';
import '../../utils/image_utils.dart';
import '../../utils/text_style_utils.dart';

class EditProfileScreen extends StatelessWidget {
  static const routeName = '/edit-screen';

  const EditProfileScreen({super.key});

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
                  'Edit Profile ',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Stack(alignment: Alignment.center, children: [
            ClipOval(
              child: Image.asset(
                imgEditImage,
                fit: BoxFit.contain,
                height: 150,
              ),
            ),
            Positioned(
              top: 10,
              right: 130,
              height: 40,
              width: 40,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kcPrimaryColor,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.camera_alt,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ]),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                const SizedBox(height: 34),
                TextFormField(
                  style: st7A869A40014,
                  decoration: inputDecorationWithBorder.copyWith(
                    prefixIcon: const Icon(
                      Icons.person_outline,
                      size: 23,
                    ),
                    hintText: 'Enter Full Name',
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  style: st7A869A40014,
                  decoration: inputDecorationWithBorder.copyWith(
                    prefixIcon: const Icon(
                      Icons.mail_outline,
                      size: 23,
                    ),
                    hintText: 'Email Address',
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  style: st7A869A40014,
                  decoration: inputDecorationWithBorder.copyWith(
                    prefixIcon: Image.asset(imgPho),
                    hintText: 'Phone Number',
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  style: st7A869A40014,
                  decoration: inputDecorationWithBorder.copyWith(
                    prefixIcon: Image.asset(imgAdd),
                    hintText: 'Enter Address',
                  ),
                ),
                const SizedBox(height: 100),
                Container(
                  alignment: Alignment.center,
                  child: TextButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: kcPrimaryColor,
                        fixedSize: const Size(330, 55),
                        alignment: Alignment.center),
                    onPressed: () {},
                    child: const Text(
                      'Update Profile',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          )
        ],
      ),
    );
  }
}
