import 'package:flutter/material.dart';
import 'package:lola/Widget/custom-button.dart';
import 'package:lola/Widget/custom_text.dart';

import '../../../../../Widget/text_form_field.dart';

class ReportPassword extends StatelessWidget {
  const ReportPassword({Key? key}) : super(key: key);

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
              text: 'الابلاغ عن مشكله',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.start,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height:150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepPurple)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const CustomText(
                      text: 'اكتب هنا',
                    ),
                  ),
                  // child: CustomTextFormField(
                  //   label: 'اكتب هنا',
                  //   type: TextInputType.emailAddress,
                  // ),
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
