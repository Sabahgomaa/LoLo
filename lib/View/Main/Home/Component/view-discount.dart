import 'package:flutter/material.dart';

import '../widgets/dicounts-card.dart';

class ViewDiscount extends StatelessWidget {
  const ViewDiscount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 40.0,
        ),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const DiscountCard();
        },
      ),
    );
  }
}
