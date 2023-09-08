import 'package:flutter/material.dart';
import 'package:raduios/view/widgets/appbar_widget.dart';

import '../../utils/color_utils.dart';
import '../../utils/form_style_utils.dart';
import '../../utils/image_utils.dart';
import '../../utils/text_style_utils.dart';
import '../widgets/custome_button_widget.dart';
import 'order_tracker.dart';

class DeliveryOptions extends StatefulWidget {
  static const routeName = '/delivery-options';
  const DeliveryOptions({super.key});

  @override
  State<DeliveryOptions> createState() => _DeliveryOptionsState();
}

class _DeliveryOptionsState extends State<DeliveryOptions> {
  var selectedOption = 'Pickup';

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
                const Spacer(),
              ],
            ),
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Select Delivery Option',
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedOption = 'Pickup';
                });
              },
              child: Container(
                decoration: selectedOption == 'Pickup'
                    ? BoxDecoration(
                        border: Border.all(
                            color: const Color.fromRGBO(81, 254, 0, 0.58)),
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(81, 254, 0, 0.58))
                    : BoxDecoration(
                        border: Border.all(color: kcEAECF0),
                        borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Text(
                        'Pickup',
                        style: selectedOption == 'Pickup'
                            ? const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Color.fromRGBO(0, 180, 18, 1))
                            : const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                      const Spacer(),
                      selectedOption == 'Pickup'
                          ? Image.asset(imgCheckbox)
                          : const SizedBox(),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedOption = 'Home';
                });
              },
              child: Container(
                decoration: selectedOption == 'Home'
                    ? BoxDecoration(
                        border: Border.all(
                            color: const Color.fromRGBO(81, 254, 0, 0.58)),
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(81, 254, 0, 0.58))
                    : BoxDecoration(
                        border: Border.all(color: kcEAECF0),
                        borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Text(
                        'Delivery to Home/Office',
                        style: selectedOption == 'Home'
                            ? const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Color.fromRGBO(0, 180, 18, 1))
                            : const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                      const Spacer(),
                      selectedOption == 'Home'
                          ? Image.asset(imgCheckbox)
                          : const SizedBox(),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: selectedOption == 'Pickup'
                ? const SizedBox(height: 3)
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Where should we deliver your order to?',
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        style: st7A869A40014,
                        decoration: inputDecorationWithBorder.copyWith(
                            hintText: 'Address',
                            suffixIcon: const Icon(
                              Icons.expand_more,
                              color: Colors.black,
                            )),
                      ),
                    ],
                  ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            child: Column(
              children: [
                TextFormField(
                  controller: TextEditingController(),
                  maxLines: 5,
                  style: st7A869A40014,
                  decoration: inputDecorationWithBorder.copyWith(
                    hintText: 'Additional note (Optional)',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          CustomButtonWidget(
            title: 'Continue',
            isMargin: true,
            callback: () => Navigator.of(context)
                .pushReplacementNamed(OrderTracker.routeName),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
