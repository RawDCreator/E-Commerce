import 'package:flutter/material.dart';

import '../../utils/color_utils.dart';
import '../screens/order_tracker.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: kcEAECF0),
                    borderRadius: BorderRadius.circular(10)),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '#87234098772',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Sept 2, 2023 at 6:00 PM',
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(height: 7),
                          Text(
                            '2 Item',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Barclays Premium Beer x 1, \nSmrinoff Lemon Vodka x 1',
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 25,
                right: 20,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(OrderTracker.routeName);
                  },
                  child: const Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 20,
                        color: kcPrimaryColor,
                      ),
                      Text(
                        'Track Order',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: kcPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                bottom: 25,
                right: 20,
                child: Text(
                  'NGN 55,000',
                  style: TextStyle(
                      color: Color.fromRGBO(0, 180, 18, 1),
                      fontSize: 21,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
