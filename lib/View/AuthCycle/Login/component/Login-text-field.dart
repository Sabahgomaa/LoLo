// ignore: file_names
import 'package:flutter/material.dart'
    show
        BuildContext,
        Colors,
        Column,
        Form,
        FormState,
        GlobalKey,
        Icons,
        Key,
        SizedBox,
        StatelessWidget,
        TextEditingController,
        TextInputType,
        Widget;

import '../../../../Widget/text_form_field.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var usernameController = TextEditingController();
    var formKey = GlobalKey<FormState>();
    var passwordController = TextEditingController();
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(
            controller: usernameController,
            label: 'البريد الالكترونى ',
            type: TextInputType.emailAddress,
            suffix: Icons.email,

          ),
          const SizedBox(
            height: 15.0,
          ),
          CustomTextFormField(
            label: 'كلمة المرور',
            controller: passwordController,
            type: TextInputType.visiblePassword,
            isPassword: true,
            suffixPressed: () {},
          ),
        ],
      ),
    );
  }
}
