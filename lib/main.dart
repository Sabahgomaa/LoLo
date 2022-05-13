import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lola/Core/router/router.dart';
import 'package:lola/View/welcome/weclome-view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },
      theme: ThemeData(

      ),
      home: const WelcomeView(),
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
    );
  }
}
