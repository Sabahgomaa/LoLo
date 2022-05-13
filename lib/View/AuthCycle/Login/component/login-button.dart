// ignore: file_names
import 'package:flutter/material.dart';
import 'package:lola/Core/router/router.dart';
import 'package:lola/Widget/custom-button.dart';
import 'package:lola/Widget/custom_text.dart';
import '../../../../Widget/custom_text_button.dart';
import '../../../Main/navBar/view-NavBar.dart';
import '../../Register/register-view.dart';

class LoginButtons extends StatelessWidget {
  const LoginButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomTextButton(
              onpress: () {
                // MagicRouter.navigateTo(page)
              },
              text: 'نسيت كلمة السر؟',
            )
          ],
        ),
        CustomButton(
          text: 'تسجيل دخول',
          buttonColor: Colors.pink,
          onPress: () {
            MagicRouter.navigateTo(ViewNavBar());
          },
        ),
        const CustomText(
          text: 'او',
          fontSize: 14,
          color: Colors.white,
        ),
        CustomTextButton(
          text: 'انشاء حساب',
          onpress: () {
            MagicRouter.navigateTo(RegisterView());
          },
        )
      ],
    );
  }
}
