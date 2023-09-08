import 'package:flutter/material.dart';
import 'package:raduios/view/screens/delivery_options.dart';
import 'package:raduios/view/widgets/appbar_widget.dart';

import '../../utils/color_utils.dart';
import '../../utils/image_utils.dart';
import '../widgets/cart_item.dart';
import '../widgets/custome_button_widget.dart';

class CartScreen extends StatefulWidget {
  static const routeName = '/cart';
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  var selected = 'Cash';

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
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Container(
                //   padding: const EdgeInsets.all(4),
                //   decoration: BoxDecoration(
                //       color: kcFEF3F2,
                //       borderRadius: BorderRadius.circular(16)),
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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Cart',
              style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 20),
          ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return const CartItem();
              }),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: kcEAECF0),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    const Text(
                      'Orders Total ',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                    ),
                    const Text(
                      '/ crates',
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                    const Spacer(),
                    Text(
                      'NGN 25,200',
                      style: TextStyle(
                          color: kcPrimaryColor.withOpacity(0.6),
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Divider(),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: kcPrimaryColor),
                  color: kcPrimaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    const Text(
                      'Outstanding Balance',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: kcPrimaryColor),
                    ),
                    const SizedBox(width: 5),
                    Image.asset(imgCInfo),
                    const Spacer(),
                    const Text(
                      'NGN 25,200',
                      style: TextStyle(
                          color: kcPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Divider(),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Payment Method',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = 'Cash';
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 30, right: 30, top: 20, bottom: 20),
                    decoration: selected == 'Cash'
                        ? BoxDecoration(
                            color: kcPrimaryColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1, color: kcPrimaryColor))
                        : BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        selected == 'Cash'
                            ? Image.asset(imgCash2)
                            : Image.asset(imgCash),
                        const SizedBox(height: 15),
                        selected == 'Cash'
                            ? const Text(
                                'Cash',
                                style: TextStyle(color: kcPrimaryColor),
                              )
                            : const Text('Cash'),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = 'Transfer';
                    });
                    bottomSheet(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 30, right: 30, top: 20, bottom: 20),
                    decoration: selected == 'Transfer'
                        ? BoxDecoration(
                            color: kcPrimaryColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1, color: kcPrimaryColor))
                        : BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        selected == 'Transfer'
                            ? Image.asset(imgTransfer2)
                            : Image.asset(imgTransfer),
                        const SizedBox(height: 15),
                        selected == 'Transfer'
                            ? const Text(
                                'Transfer',
                                style: TextStyle(color: kcPrimaryColor),
                              )
                            : const Text('Transfer'),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = 'Check';
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 30, right: 30, top: 20, bottom: 20),
                    decoration: selected == 'Check'
                        ? BoxDecoration(
                            color: kcPrimaryColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1, color: kcPrimaryColor))
                        : BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        selected == 'Check'
                            ? Image.asset(imgCheck2)
                            : Image.asset(imgCheck),
                        const SizedBox(height: 15),
                        selected == 'Check'
                            ? const Text(
                                'Check',
                                style: TextStyle(color: kcPrimaryColor),
                              )
                            : const Text('Check'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          CustomButtonWidget(
            title: 'Proceed to Checkout',
            isMargin: true,
            callback: () =>
                Navigator.of(context).pushNamed(DeliveryOptions.routeName),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }

  Future<void> bottomSheet(BuildContext context) async {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: 350,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Row(
                  children: [
                    Text(
                      'Bank - ',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'United Bank of Africa (UBA)',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: kcPrimaryColor),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                const ListTile(
                  leading: Icon(Icons.north_east, color: kcPrimaryColor),
                  title: Text('Account Name'),
                  subtitle: Text('Saintodumo Enterprise'),
                ),
                const Divider(),
                const ListTile(
                  leading: Icon(Icons.south_west, color: kcPrimaryColor),
                  title: Text('Account Number'),
                  subtitle: Text('1019324981'),
                ),
                const SizedBox(height: 15),
                CustomButtonWidget(
                  title: 'I\'ve made the payment',
                  isMargin: true,
                  callback: () => Navigator.of(context).pop(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
