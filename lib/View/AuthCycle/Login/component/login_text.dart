import 'package:flutter/material.dart';
import 'package:lola/Widget/custom_text.dart';

class LoginText extends StatelessWidget {
  const LoginText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomText(
      text:  'Loola',
      fontSize: 16,
      color: Colors.white,
    );
  }
}
