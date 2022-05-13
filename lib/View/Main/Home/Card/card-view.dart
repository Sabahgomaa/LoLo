import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lola/View/Main/Home/Card/Widget/add-section.dart';
import 'package:lola/View/Main/Home/Card/Widget/card-list.dart';
import 'package:lola/View/Main/Home/Card/Widget/total-order.dart';

import '../../../../Widget/custom_text.dart';

class CardView extends StatelessWidget {
  const CardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          color: Colors.purple,
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const CustomText(
          text: 'اسلة المشتريات ',
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        children: const [
          CardList(),
          SizedBox(height: 10),
          AddSection(),
          SizedBox(height: 10),
          TotalOrder(),
        ],
      ),
    );
  }
}
