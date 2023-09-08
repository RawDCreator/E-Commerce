import 'package:flutter/material.dart';
import 'package:raduios/view/widgets/appbar_widget.dart';

import '../../utils/color_utils.dart';
// import '../../utils/image_utils.dart';
// import '../../utils/text_style_utils.dart';
import './order_screen.dart';
import 'pending_order_screen.dart';

class OrderDetailScreen extends StatefulWidget {
  static const routeName = '/order-detail';
  const OrderDetailScreen({super.key});

  @override
  State<OrderDetailScreen> createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
  Widget _tabController() {
    return DefaultTabController(
      // initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: noAppbar(),
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
                  text: 'My Orders',
                ),
                Tab(
                  text: 'Pending Orders',
                )
              ]),
        ),
        body: const TabBarView(
          children: [
            OrderScreen(),
            PendingOrderScreen(),
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
