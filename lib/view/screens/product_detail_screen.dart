import 'package:flutter/material.dart';
import '../../utils/color_utils.dart';
import './crate.dart';
import './trucks.dart';

class ProductDetailScreen extends StatefulWidget {
  static const routeName = '/product-detail';
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  Widget _tabController() {
    return DefaultTabController(
      // initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          actions: const [
            Padding(
              padding: EdgeInsets.only(top: 17, left: 25, right: 25),
              child: Row(
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
            )
          ],
          leading: IconButton(
            iconSize: 40,
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.keyboard_arrow_left),
          ),
          backgroundColor: Colors.grey[50],
          iconTheme: const IconThemeData(color: Colors.black),
          bottom: const TabBar(
            indicatorColor: kcPrimaryColor,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(fontSize: 25),
            unselectedLabelStyle: TextStyle(fontSize: 22),
            tabs: <Widget>[
              Tab(
                text: 'Crates',
              ),
              Tab(
                text: 'Trucks',
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Crate(),
            Trucks(),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabController(),
    );
  }
}
