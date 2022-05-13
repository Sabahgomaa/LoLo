import 'package:flutter/material.dart';

import '../../../../../../Widget/custom_text.dart';

class OrderAboutWay extends StatelessWidget {
  const OrderAboutWay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            alignment: AlignmentDirectional.topStart,
            child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CustomText(
                  text: 'ترتيب عن طريق',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  textAlign: TextAlign.start,
                ),
                CustomText(
                  text: 'ترتيب الافتراضى',
                  fontSize: 20,
                  textAlign: TextAlign.start,
                ),
                CustomText(
                  text: 'ترتيب حسب الشهره',
                  fontSize: 20,
                  textAlign: TextAlign.start,
                ),

                CustomText(
                  text: 'ترتيب حسب معدل التقيم',
                  fontSize: 20,

                  textAlign: TextAlign.start,
                ),
                CustomText(
                  text: 'ترتيب حسب الادنى سعرا للاعلى',
                  fontSize: 20,

                  textAlign: TextAlign.start,
                ),
                CustomText(
                  text: 'ترتيب حسب الاعلى سعراللادنى',
                  fontSize: 20,
                  textAlign: TextAlign.start,
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
