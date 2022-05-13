import 'package:flutter/material.dart';

import '../../../../Widget/custom_text.dart';

class RegisterText extends StatelessWidget {
  const RegisterText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const CustomText(
      text:  'Loola',
      fontSize: 16,
      color: Colors.white,
    );
  }
}
