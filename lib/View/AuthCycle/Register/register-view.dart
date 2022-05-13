import 'package:flutter/material.dart';

import 'component/register-button.dart';
import 'component/register-text-field.dart';
import 'component/register-text.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

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
                    RegisterText(),
                    SizedBox(
                      height: 20.0,
                    ),
                    RegisterTextField(),
                    SizedBox(
                      height: 20.0,
                    ),
                    RegisterButton(),
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
