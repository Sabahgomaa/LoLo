import 'package:flutter/material.dart';
import '../widgets/category-item.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 12,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
        ),
        itemBuilder: (context, index) {
          return const CategoryItem();
        },
      ),
    );
  }
}
