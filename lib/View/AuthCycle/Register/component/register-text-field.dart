import 'package:flutter/material.dart';

import '../../../../Widget/text_form_field.dart';

class RegisterTextField extends StatelessWidget {
  const RegisterTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var usernameController = TextEditingController();
    var formKey = GlobalKey<FormState>();
    var passwordController = TextEditingController();
    var firstNameController = TextEditingController();

    var lastNameController = TextEditingController();
    return Form(
      key: formKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: CustomTextFormField(
                  controller: firstNameController,
                  label: 'الاسم الاول',
                  type: TextInputType.text,
                ),
              ),
              const SizedBox(
                width: 5.0,
              ),
              Expanded(
                child: CustomTextFormField(
                  controller: lastNameController,
                  label: 'الاسم الثانى',
                  type: TextInputType.text,
                ),
              ),
            ],
          ),
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
          CustomTextFormField(
            label: ' تاكيد كلمة المرور',
            controller: passwordController,
            type: TextInputType.visiblePassword,
            isPassword: true,
            suffixPressed: () {},
          ),
          CustomTextFormField(
            label: 'رقم الهاتف',
            controller: passwordController,
            type: TextInputType.phone,
            isPassword: true,
            suffixPressed: () {},
          ),
          CustomTextFormField(
            label: 'العنوان',
            controller: passwordController,
            type: TextInputType.text,
            isPassword: true,
            suffixPressed: () {},
          ),
        ],
      ),
    );
  }
}
