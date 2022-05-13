import 'package:flutter/material.dart';
import 'package:lola/Widget/custom-button.dart';

import '../../../../../Widget/custom_text.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 150,
            height: 150,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                // crossAxisSpacing: 0,
                mainAxisSpacing: 0.0,
              ),
              itemBuilder: (context, index) => Container(
                        width: 150,
                        height: 150,
                        child: Image.asset(
                          'assets/images/ba.jpg',
                        ),
                      ),
              itemCount: 2,
            ),
          ),
          Column(
            children: const [
              CustomText(
                text: 'عدد المنتجات :4',
                fontSize: 10,
              ),
              CustomText(
                text: 'الحاله:فى الشحن',
                fontSize: 10,
              ),
              CustomText(
                text: 'تاريخ الطلب :12/5/2020',
                fontSize: 10,
              ),
              CustomText(
                text: 'تاريخ الوصول :12/5/2020',
                fontSize: 10,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              SizedBox(height: 50,),
              CustomText(
                text: '200EGP',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 10,
              ),
             Container(
               color: Colors.pink,
                height: 30,
                width: 90,
                child: Text('اظهار المنتجات',style: TextStyle(color: Colors.white,),textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
