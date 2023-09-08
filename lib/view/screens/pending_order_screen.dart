import 'package:flutter/material.dart';

import '../widgets/pending_item.dart';

class PendingOrderScreen extends StatelessWidget {
  static const routeName = '/pending-order-screen';
  const PendingOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: 2,
        itemBuilder: (context, index) {
          return const PendingItem();
        });
  }
}
