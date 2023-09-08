import 'package:flutter/material.dart';
import 'package:raduios/view/screens/cart_screen.dart';
import '../../utils/color_utils.dart';
import '/view/widgets/appbar_widget.dart';
import '../../utils/image_utils.dart';

class Crate extends StatelessWidget {
  static const routeName = '/crate';

  const Crate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: noAppbar(),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Image.asset(imgCrate),
            ),
          ]),
          Column(
            children: [
              Image.asset(
                imgSingle,
                width: 300,
                height: 300,
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Budweiser Premium \nBeer',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '500ml Can | 5%',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Text(
                  'Qty(crates)',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: kcPrimaryColor),
                ),
                SizedBox(
                  width: 110,
                ),
                Text(
                  'Price',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: kcPrimaryColor),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.0,
                    color: kc027A48,
                  ),
                ),
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(5),
                //   color: kcPrimaryColor,
                // ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.remove,
                    size: 25,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 2,
            ),
            const Text(
              '1',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.0,
                    color: kc027A48,
                  ),
                ),
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(5),
                //   color: kcPrimaryColor,
                // ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add,
                    size: 25,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 55,
            ),
            const Text(
              'N8,400',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )
          ]),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Product Description',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Budweiser Premium, a premium mild beer crafted with the finest European Barley for a rich and smooth taste.',
                  style: TextStyle(fontSize: 13),
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: kcPrimaryColor,
                      fixedSize: const Size(360, 55),
                      alignment: Alignment.center),
                  onPressed: () {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.white,
                        content: const Text(
                          'Added item to Cart!',
                          style: TextStyle(color: Colors.black),
                        ),
                        duration: const Duration(
                          seconds: 2,
                        ),
                        action: SnackBarAction(
                          label: 'View Cart',
                          textColor: kcPrimaryColor,
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(CartScreen.routeName);
                          },
                        ),
                      ),
                    );
                  },
                  icon: const Icon(Icons.shopping_cart),
                  label: const Text(
                    'Add to Cart ',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
