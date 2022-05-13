import 'package:flutter/material.dart';

import '../../../../../Widget/custom_text.dart';

class AddSection extends StatelessWidget {
  const AddSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                width: 250,
                height: 40,
                decoration:
                BoxDecoration(border: Border.all(color: Colors.purple)),
                child: const CustomText(
                  text: 'اضافة ',
                  color: Colors.pink,
                )),
            Container(
              color: Colors.pink,
              height: 40,
              width: 100,
              child: const Text(
                'اضافه',
                style: TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),

    );
  }
}
