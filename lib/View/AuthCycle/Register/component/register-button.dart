import 'package:flutter/material.dart';
import 'package:lola/Core/router/router.dart';
import '../../../../Widget/custom-button.dart';
import '../../../../Widget/custom_text.dart';
import '../../../../Widget/custom_text_button.dart';
import '../../../Main/navBar/view-NavBar.dart';
import '../../Login/login-view.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          text: 'انشاء حساب',
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
          text: 'تسجيل دخول',
          onpress: () {
            MagicRouter.navigateTo(LoginView());
          },
        )
      ],
    );
  }
}
