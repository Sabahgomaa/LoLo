import 'package:flutter/material.dart';

import '../../../../Widget/custom_text.dart';
import '../../Home/widgets/dicounts-card.dart';

class ViewFavorite extends StatelessWidget {
  const ViewFavorite({Key? key}) : super(key: key);

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
          text: 'قائمة الامنيات',
          textAlign: TextAlign.center,
        ),
      ),
      body: GridView.builder(
        itemCount: 30,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10.0,
        ),
        itemBuilder: (context, index) {
          return const DiscountCard();
        },
      ),
    );
  }
}
