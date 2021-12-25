import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class onboarding extends StatefulWidget {
  const onboarding({Key? key}) : super(key: key);

  @override
  _onboardingState createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  List<String> images = [
    'assets/images/Illustration1.png',
    'assets/images/Illustration2.png',
    'assets/images/Illustration3.png',
  ];
  List<String> text = [
    'Everything for comfortable\n reading of your favourite\n             books',
    'Different formats for listening\n  to books with lables and\n            subtitles',
    'Easy search by all categories\n and outhers from all over the\n            world',
  ];
  List<String> title = [
    'Convenient Use',
    'Online listening',
    'Search',
  ];
  int index = 0;
  void _increment() {
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    child: Image.asset(
                      'assets/images/Background.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      images[index],
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Center(
                    child: Container(
                      child: Text(
                        title[index],
                        style: TextStyle(
                          fontFamily: 'Poppins-Regular',
                          fontWeight: FontWeight.w600,
                          color: Color(0xff2E2E5D),
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Center(
                    child: Text(
                      text[index],
                      style: TextStyle(
                        fontFamily: 'Poppins-Regular',
                        fontWeight: FontWeight.w400,
                        color: Color(0xff2E2E5D),
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 12.h,
                        width: 12.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12.r)),
                            color: index == 0
                                ? Color(0xffF77A55)
                                : Color(0xff2E2E5D)),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Container(
                        height: 12.h,
                        width: 12.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12.r)),
                            color: index == 1
                                ? Color(0xffF77A55)
                                : Color(0xff2E2E5D)),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        height: 12.h,
                        width: 12.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12.r)),
                            color: index == 2
                                ? Color(0xffF77A55)
                                : Color(0xff2E2E5D)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 56.h,
                  ),
                  Container(
                    child: index == 2
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 16.h),
                                  height: 56.h,
                                  width: 295.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.r),
                                    color: Color(0xff2E2E5D),
                                  ),
                                  child: Text(
                                    'Get Started',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'Poppins-Regular',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          )
                        : Row(
                            mainAxisAlignment:MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 56.h,
                                width: 140.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.r),
                                  color: Colors.white,
                                ),
                                child: FlatButton(
                                  onPressed: null,
                                  child: Text(
                                    'Skip',
                                    style: TextStyle(
                                      fontFamily: 'Poppins-Regular',
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff2E2E5D),
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 56.h,
                                width: 140.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  color: Color(0xff2E2E5D),
                                ),
                                child: FlatButton(
                                  onPressed: () {
                                    _increment();
                                  },
                                  child: Text(
                                    'Next',
                                    style: TextStyle(
                                      fontFamily: 'Poppins-Regular',
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
