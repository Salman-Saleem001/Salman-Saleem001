import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pearl_book/Screens/Splash_Screen.dart';

void main()
{
 runApp(Home());
}
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder:()=> MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pearl Book',
        home: splash_screen(),
      ),
    );
  }
}
