import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextButton extends StatelessWidget {
  Function() onpress;
  String text;
  final MaterialColor? labelColor ;
  CustomTextButton({Key? key, required this.text, required this.onpress, this.labelColor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onpress,
      child: Text(
        text,
        style:TextStyle(color:labelColor ),
      ),
    );
  }
}