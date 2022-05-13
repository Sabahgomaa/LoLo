import 'package:flutter/material.dart';
import 'package:lola/View/Main/Home/Component/view-category.dart';
import 'package:lola/View/Main/Home/Component/view-discount.dart';
import 'package:lola/View/Main/Home/Component/slider-offer.dart';
import 'package:lola/Widget/custom_text.dart';

import '../../../Core/router/router.dart';
import 'Card/card-view.dart';
import 'Search/view-search.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

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
          onPressed: () {
            MagicRouter.navigateTo(CardView());
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const CustomText(
          text: 'الصفحه الرئيسية',
          textAlign: TextAlign.center,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            InkWell(
              child: Container(
                height: 40,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.purple)),
                child: Row(
                  children: const [
                    Icon(
                      Icons.search,
                      color: Colors.purple,
                    ),
                    CustomText(text: 'بحث',color: Colors.pink,)
                  ],
                ),
              ),
              onTap: () {
                MagicRouter.navigateTo(ViewSearch());
              },
            ),
            const SizedBox(
              height: 20,
            ),
            const CategoryView(),
            const SizedBox(
              height: 20,
            ),
            const SliderOffer(),
            const SizedBox(
              height: 20,
            ),
            const ViewDiscount()
          ],
        ),
      ),
    );
  }
}
