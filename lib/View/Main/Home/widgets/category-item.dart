import 'package:flutter/material.dart';

import '../../../../Widget/custom_text.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/ba.jpg',
          width: 80,
          height: 80,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          width: 20.0,
        ),
        const CustomText(
          text: 'فساتين',
          fontSize: 12,
          color: Colors.white,
          alignment: Alignment.bottomCenter,
        )
      ],
    );
  }
}
