import 'package:flutter/material.dart';
import '../../utils/color_utils.dart';
import '../../utils/form_style_utils.dart';
import '../../utils/image_utils.dart';
import '../../utils/text_style_utils.dart';
import '/view/widgets/appbar_widget.dart';
import '../widgets/product_item.dart';

class ProductCategoryScreen extends StatelessWidget {
  static const routeName = '/product-category';

  const ProductCategoryScreen({super.key});

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
                GestureDetector(
                  child: Image.asset(imgFilter),
                  onTap: () {},
                ),
                const SizedBox(
                  width: 15,
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Beer',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  decoration: inputDecorationWithBorder.copyWith(
                      hintText: 'Search for drink',
                      isDense: true,
                      contentPadding: const EdgeInsets.all(12),
                      prefixIcon: const Icon(
                        Icons.search_sharp,
                        color: kc374957,
                      )),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: kcFEF3F2,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  'All',
                  style: st10182850012.copyWith(color: kcB42318, fontSize: 14),
                ),
              ),
              const SizedBox(height: 20),
              ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const ProductItem();
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
