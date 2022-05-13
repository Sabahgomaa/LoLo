import 'package:flutter/material.dart';
import 'package:lola/Widget/custom-button.dart';

import '../../Core/router/router.dart';
import '../AuthCycle/Login/login-view.dart';
import '../AuthCycle/Register/register-view.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
            children: [
        Container(
        width :double.infinity,
          height:double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/ba.jpg'),
                fit: BoxFit.fill,),)),
        Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 60),
            child:    Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButton(
                  text: 'تسجيل الدخول',
                  borderColor: Colors.red,
                  buttonColor: Colors.white,
                  fontColor: Colors.red,
                  onPress: () {
                    MagicRouter.navigateTo(const LoginView());
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(
                  text: 'انشاء حساب',
                  buttonColor: Colors.red,
                  onPress: () => MagicRouter.navigateTo(const RegisterView()),
                ),
              ],
            ),
          )]),
    );
  }
}
