import 'package:flutter/material.dart';

class BackGroundImage extends StatelessWidget {
  const BackGroundImage({Key? key, this.child}) : super(key: key);
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/ba.jpg');
  }
}
