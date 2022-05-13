import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? type;
  final String label;
  final IconData? suffix;
  final Function(String)? onSubmit;
  final Function(String)? validate;
  final Function(String)? onChange;
  final Function()? suffixPressed;
  final IconData? prefix;
  bool isPassword = false;
  final dynamic onTap;

  CustomTextFormField({
    Key? key,
    this.controller,
    this.suffix,
    this.prefix,
    this.onSubmit,
    this.onChange,
    this.suffixPressed,
    this.validate,
    this.isPassword = false,
    this.type,
    this.onTap,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        onTap: onTap,
        controller: controller,
        keyboardType: type,
        obscureText: isPassword,
        onFieldSubmitted: onSubmit,
        onChanged: onChange,
        //validator: validate,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Colors.pink),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.pink),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.pink),
          ),
          suffixIcon: suffix != null
              ? IconButton(
                  onPressed: suffixPressed,
                  icon: Icon(
                    suffix,
                    textDirection: TextDirection.ltr,
                    color: Colors.pink,
                  ),
                  color: Colors.pink,
                )
              : null,
        ));
  }
}
