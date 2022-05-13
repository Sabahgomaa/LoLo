import 'package:flutter/material.dart';

import '../../../../Widget/custom_text.dart';
import 'Component/order-card.dart';

class ViewOrder extends StatelessWidget {
  const ViewOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          color: Colors.purple,
          icon: const Icon(
            Icons.shopping_cart,
          ),
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const CustomText(
          text: 'حالة الطلب',
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => OrderCard(),
        itemCount: 4,
      ),
    );
  }
}
