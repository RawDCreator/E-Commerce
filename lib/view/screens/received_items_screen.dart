import 'package:flutter/material.dart';
import '../../utils/image_utils.dart';
import '../widgets/custome_button_widget.dart';
import '../widgets/received_items.dart';

class ReceivedItemsScreen extends StatelessWidget {
  static const routeName = '/received-items';
  const ReceivedItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Row(
            children: [
              const Text(
                'Input Items Received',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              const Spacer(),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(0, 180, 18, 0.08),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: const Row(
                    children: [
                      Text(
                        'Add',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 180, 18, 1),
                        ),
                      ),
                      Icon(
                        Icons.add,
                        color: Color.fromRGBO(0, 180, 18, 1),
                        size: 16,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                return const ReceivedItems();
              }),
        ),
        const SizedBox(height: 50),
        CustomButtonWidget(
          title: 'Save Order',
          isMargin: true,
          callback: () => showModal(context),
        ),
        const SizedBox(height: 50),
      ],
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
                      'Received Products Saved',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      textAlign: TextAlign.center,
                      'Your Products has been saved successfully, Please input "Empties Returned"',
                      style: TextStyle(fontSize: 15),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: 320.0,
                      height: 50,
                      child: CustomButtonWidget(
                        title: 'Update Empties',
                        isMargin: true,
                        callback: () => Navigator.of(context).pop(),
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
