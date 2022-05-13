import 'package:flutter/material.dart';

import '../../../../../../Widget/custom_text.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        //elevation: 5,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 50,
              height: 50,
              child: Image.asset(
                'assets/images/ba.jpg',
                // width: 50,
                // height: 50,
              ),
            ),
            Row(
              children: const [
                CustomText(text: 'حذاء جلد نسائى',fontSize: 12,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CustomText(text: 'جلد طبيعى',fontSize: 10,),
                SizedBox(width: 5,),
                CustomText(text: '195EGP',fontSize: 10,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon( Icons.star_rate,size: 10),
                SizedBox(width: 10,),
                CustomText(text: '195EGP',fontSize: 10,decoration: TextDecoration.lineThrough,),
              ],
            )
          ],
        ),
      ),
    );
  }
}