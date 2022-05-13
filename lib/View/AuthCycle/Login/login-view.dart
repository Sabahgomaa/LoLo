import 'package:flutter/material.dart';

import 'component/Login-text-field.dart';
import 'component/login-button.dart';
import 'component/login_text.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/ba.jpg',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: const [
                    LoginText(),
                    SizedBox(
                      height: 20.0,
                    ),
                    LoginTextField(),
                    SizedBox(
                      height: 20.0,
                    ),
                    LoginButtons(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
