import 'package:flutter/material.dart';

import '../../../../../Widget/custom_text.dart';

class LastSearch extends StatelessWidget {
  final String text;
  const LastSearch({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(   height: 40,
      width: 100,
      decoration:
      BoxDecoration(border: Border.all(color: Colors.black)),
      child: Row(
        children:  [
          const Icon(
            Icons.search,
            color: Colors.black,
            textDirection: TextDirection.rtl,
          ),
          CustomText(
            text: text,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}