import 'package:flutter/cupertino.dart';

import 'card-item.dart';

class CardList extends StatelessWidget {
  const CardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) => const CardItem(),
      ),
    );
  }
}
