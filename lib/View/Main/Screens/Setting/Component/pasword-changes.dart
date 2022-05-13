import 'package:flutter/material.dart';
import 'package:lola/Widget/custom-button.dart';
import 'package:lola/Widget/custom_text.dart';

import '../../../../../Widget/text_form_field.dart';

class PasswordChanges extends StatelessWidget {
  const PasswordChanges({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 400,
      child: Column(
        children: [
          Container(
            alignment: AlignmentDirectional.topStart,
            child: const CustomText(
              text: 'تغيير كلمة المرور',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.start,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CustomTextFormField(
                  label: 'كلمة المرور الحاليه',
                  type: TextInputType.emailAddress,
                ),
                CustomTextFormField(
                  label: 'تاكيد كلمة المرور الجديد',
                  type: TextInputType.emailAddress,
                ),
                CustomTextFormField(
                  label: 'تاكيد كلمة المرور الجديد',
                  type: TextInputType.emailAddress,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 150,
                          child: const CustomButton(
                            buttonColor: Colors.pink,
                            text: 'حفظ',
                          ),
                        ),
                        Container(
                          width: 150,
                          child: const CustomButton(
                            buttonColor: Colors.white,
                            borderColor: Colors.pink,
                            text: 'الغاء',
                            fontColor: Colors.pink,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
