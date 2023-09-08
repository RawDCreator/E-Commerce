import 'package:flutter/material.dart';
import 'package:raduios/utils/color_utils.dart';
import 'package:raduios/utils/form_style_utils.dart';
import 'package:raduios/utils/image_utils.dart';
import 'package:raduios/utils/text_style_utils.dart';
import 'package:raduios/view/widgets/appbar_widget.dart';
import './product_category_screen.dart';
import '../widgets/product_item.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: noAppbar(),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 14, left: 25, right: 25, bottom: 20),
            child: Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: kcPrimaryColor,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'DELIVER TO',
                      style: stBlack40015.copyWith(
                          fontSize: 8, letterSpacing: 0.8),
                    ),
                    Text(
                      'Home - 15/4 Roawda...',
                      style: st10182850012.copyWith(color: kcBlack),
                    ),
                  ],
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
                //       Text('15 Points',
                //           style: st10182850012.copyWith(color: kcB42318))
                //     ],
                //   ),
                // ),
                const SizedBox(width: 11),
                const Icon(
                  Icons.notifications_active,
                  color: kcPrimaryColor,
                ),
              ],
            ),
          ),
          // const SizedBox(height: 16),
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
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.only(left: 20),
            height: 120,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        height: 120,
                        width: MediaQuery.of(context).size.width * 0.8,
                        margin: const EdgeInsets.only(right: 10.0),
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          imgBanner,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                          top: 10,
                          left: 10,
                          child: Text(
                            'Big Discount',
                            style: st61FF0050012Popins,
                          )),
                      Positioned(
                          bottom: 10,
                          left: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Only',
                                style: stWhite50010.copyWith(
                                    color: kcWhite.withOpacity(0.65)),
                              ),
                              Text(
                                'N400.00',
                                style: stWhite50010.copyWith(fontSize: 24),
                              ),
                              const Text('Heineken', style: stWhite70010),
                            ],
                          ))
                    ],
                  );
                }),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Text('Explore Categories',
                    style: st170A2E50016.copyWith(color: kcBlack)),
                // const Spacer(),
                // TextButton(
                //     onPressed: () {},
                //     child: Text(
                //       'See all',
                //       style: stWhite50010.copyWith(color: kcPrimaryColor),
                //     ))
              ],
            ),
          ),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.only(left: 20),
            height: 59,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoryData.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 12),
                    height: 56,
                    width: 71,
                    decoration: BoxDecoration(
                        border: Border.all(color: kcEAECF0),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          child: Image.asset(
                            categoryData[index].image,
                            height: 26,
                          ),
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(ProductCategoryScreen.routeName);
                          },
                        ),
                        const SizedBox(height: 4),
                        Text(
                          categoryData[index].title,
                          style: stBlack5008Popins,
                        )
                      ],
                    ),
                  );
                }),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text('Popular Liquor',
                style: st170A2E50016.copyWith(color: kcBlack)),
          ),
          const SizedBox(height: 20),
          ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                return const ProductItem();
                // return Container(
                //   padding:
                //       const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                //   // height: 99,
                //   decoration: BoxDecoration(
                //       border: Border.all(color: kcEAECF0),
                //       borderRadius: BorderRadius.circular(10)),
                //   child: Row(
                //     children: [
                //       Image.asset(imgCan),
                //       const SizedBox(width: 10),
                //       Column(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           Text(
                //             'Voodoo Ranger Imperial IPA',
                //             style: stC1C7D050014.copyWith(color: kcBlack),
                //           ),
                //           Text(
                //             '250ml Can  |  9%',
                //             style: stWhite50010.copyWith(color: kc979797),
                //           ),
                //           const SizedBox(height: 7),
                //           Text(
                //             'N200.00',
                //             style: stBlack50020.copyWith(color: kcPrimaryColor),
                //           )
                //         ],
                //       )
                //     ],
                //   ),
                // );
              }),
        ],
      ),
    );
  }
}

class CategoryData {
  final String title;
  final String image;

  CategoryData(this.title, this.image);
}

List<CategoryData> categoryData = [
  CategoryData('Whisky', imgWhiskey),
  CategoryData('Beer', imgBeer),
  CategoryData('Energy Drink', imgEnergyDringy),
  CategoryData('Wine', imgWine),
  CategoryData('Beverages', imgBeverages),
];
