import 'package:flutter/material.dart';

import '../../../../../Widget/custom_text.dart';

class TotalOrder extends StatelessWidget {
  const TotalOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const CustomText(
              text: 'اجمالى الطلب',
              color: Colors.black,
              alignment: Alignment.bottomRight,
              fontWeight: FontWeight.bold,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CustomText(
                  text: 'اجمالى المشتريات',
                ),
                CustomText(
                  text: '10.000EGP',
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CustomText(
                  text: 'مصاريف الشحن',
                ),
                CustomText(
                  text: '50EGP',
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CustomText(
                  text: 'الاجمالى',
                ),
                CustomText(
                  text: '10.050EGP',
                )
              ],
            ),
            const SizedBox(height: 7,),
            Container(
              color: Colors.pink,
              height: 40,
              width: double.infinity,
              child: const Text(
                'ادفع الان',
                style: TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
