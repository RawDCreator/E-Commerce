import 'package:flutter/material.dart';

import '../../utils/color_utils.dart';
import '../../utils/image_utils.dart';

class PendingItem extends StatelessWidget {
  const PendingItem({super.key});

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
                          Row(
                            children: [
                              Text(
                                '#87234098772',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                          Text(
                            'Sept 2, 2023 at 6:00 PM',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 20),
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
                top: 35,
                right: 20,
                child: GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      Image.asset(imgPchat),
                    ],
                  ),
                ),
              ),
              const Positioned(
                bottom: 25,
                right: 20,
                child: Text(
                  'N55,000',
                  style: TextStyle(
                      color: kcPrimaryColor,
                      fontSize: 23,
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
