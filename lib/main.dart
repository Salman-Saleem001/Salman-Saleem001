import 'package:flutter/material.dart';
import 'package:pearl_book/Screens/Error_Screen.dart';
import 'package:pearl_book/Screens/Login.dart';
import 'package:pearl_book/Screens/Onboarding.dart';
import 'package:pearl_book/Screens/Splash_Screen.dart';
import 'package:pearl_book/test/PageViiewTest.dart';

void main()
{
 runApp(Home());
}
class Home extends StatelessWidget {

   Home({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pearl Book',
        home: LoginScreen(),
    );
  }
}
