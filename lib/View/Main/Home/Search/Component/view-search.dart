import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../Widget/custom_text.dart';
import '../../../../../Widget/text_form_field.dart';
import 'Widget/order-about-way.dart';
import 'Widget/product-item.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

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
          text: 'البحث ',
          textAlign: TextAlign.center,
        ),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:  Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 320,
                      decoration:
                      BoxDecoration(border: Border.all(color: Colors.purple)),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.search,
                            color: Colors.purple,
                          ),
                          CustomText(
                            text: 'بحث',
                            color: Colors.purple,
                          )
                        ],
                      ),
                    ),
                    IconButton(onPressed: (){showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(25.0))),
                        backgroundColor: Colors.black,
                        context: context,
                        builder: (context) => const OrderAboutWay());}, icon: const Icon(Icons.filter_list))
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => const ProductItem(),
                  itemCount: 12,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10.0,
                  ),
                ),
              ],
            ),
          ),
        ),

    );
  }
}
