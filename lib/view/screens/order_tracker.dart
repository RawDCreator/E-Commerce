import 'package:flutter/material.dart';
import 'package:order_tracker_zen/order_tracker_zen.dart';
import 'package:raduios/utils/image_utils.dart';
import '../screens/product_received_screen.dart';
import '../widgets/appbar_widget.dart';

import '../../utils/color_utils.dart';
import '../../utils/text_style_utils.dart';
import '../widgets/custome_button_widget.dart';

class OrderTracker extends StatefulWidget {
  static const routeName = '/order-tracker';
  const OrderTracker({super.key});

  @override
  State<OrderTracker> createState() => _OrderTrackerState();
}

class _OrderTrackerState extends State<OrderTracker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: noAppbar(),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Row(
            children: [
              IconButton(
                iconSize: 40,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.keyboard_arrow_left),
              ),
              const SizedBox(width: 15),
              const Text(
                'Track #87234098772',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: kcEAECF0),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 10),
                    child: Row(
                      children: [
                        Image.asset(
                          imgDriver,
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Micheal John',
                              style: stBlack50020.copyWith(color: kcBlack),
                            ),
                            Text(
                              'Driver',
                              style: st170A2E50016.copyWith(color: kc979797),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Image.asset(imgDChat),
                            ),
                            const SizedBox(height: 7),
                            GestureDetector(
                              onTap: () {},
                              child: Image.asset(imgDPhone),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(imgTId),
                        const SizedBox(height: 3),
                        const Text(
                          '#87234098772',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 3),
                        const Text(
                          'Tracking ID',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        Image.asset(imgTTime),
                        const SizedBox(height: 3),
                        const Text(
                          '2-3 Days',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 3),
                        const Text(
                          'Estimated Days',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        Image.asset(imgTquan),
                        const SizedBox(height: 3),
                        const Text(
                          '25 Crates',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 3),
                        const Text(
                          'Package Qty',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              const Divider(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Column(
                  children: [
                    OrderTrackerZen(
                      tracker_data: [
                        TrackerData(
                          title: "Order Place",
                          date: "Sat, 8 Apr '22",
                          tracker_details: [
                            TrackerDetails(
                              title: "Your order was placed",
                              datetime: "Sat, 8 Apr '22 - 17:17",
                            ),
                            TrackerDetails(
                              title: "Transloading your Order",
                              datetime: "Sat, 8 Apr '22 - 17:42",
                            ),
                          ],
                        ),
                        TrackerData(
                          title: "Order on Transit",
                          date: "Sat, 8 Apr '22",
                          tracker_details: [
                            TrackerDetails(
                              title: "Order Received",
                              datetime: "Sat, 8 Apr '22 - 17:50",
                            ),
                          ],
                        ),
                        TrackerData(
                          title: "Order Delivered",
                          date: "Sat,8 Apr '22",
                          tracker_details: [
                            TrackerDetails(
                              title: "You received your order, by Mandriod",
                              datetime: "Sat, 8 Apr '22 - 17:51",
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 3,
                          fixedSize: const Size(320, 50),
                          backgroundColor: Colors.white),
                      onPressed: () {
                        showModal(context);
                      },
                      child: const Text(
                        'Received Products!',
                        style: TextStyle(fontSize: 16, color: kcPrimaryColor),
                      ),
                    ),
                    const SizedBox(height: 10),
                    CustomButtonWidget(
                      title: 'Report an issue',
                      isMargin: true,
                      callback: () => Navigator.of(context).pushNamed(''),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              )
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
                  children: [
                    Image.asset(imgCCheck),
                    const SizedBox(height: 25),
                    const Text(
                      'Driver Arrived!',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      textAlign: TextAlign.center,
                      'Your Driver has successfully arrived premises, Please Confirm Product',
                      style: TextStyle(fontSize: 15),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: 320.0,
                      height: 50,
                      child: CustomButtonWidget(
                        title: 'Confirm Product',
                        isMargin: true,
                        callback: () => Navigator.of(context)
                            .pushReplacementNamed(
                                ProductReceivedScreen.routeName),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
