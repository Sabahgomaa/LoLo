import 'package:flutter/material.dart';
import 'package:lola/Widget/custom-button.dart';
import 'package:lola/Widget/custom_text.dart';

import '../../../../../Widget/text_form_field.dart';

class SearchInfo extends StatelessWidget {
  const SearchInfo({Key? key}) : super(key: key);

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
              text: 'معلومات الحساب',
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
                  label: 'البريد الالكترونى ',
                  type: TextInputType.emailAddress,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextFormField(
                        label: 'الاسم الاول',
                        type: TextInputType.emailAddress,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: CustomTextFormField(
                        label: 'الاسم الثانى',
                        type: TextInputType.emailAddress,
                      ),
                    ),
                  ],
                ),
                CustomTextFormField(
                  label: 'رقم الهاتف ',
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
