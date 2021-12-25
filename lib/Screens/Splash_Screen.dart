import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pearl_book/Screens/Onboarding.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({Key? key}) : super(key: key);

  @override
  _splash_screenState createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState()
  {
    super.initState();
    _navigatetohome();
  }
  _navigatetohome()async
  {
    await(Future.delayed(Duration(milliseconds: 3000)));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>onboarding()));
  }
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffffffff),
        body: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/5),
                constraints: BoxConstraints(minWidth: 0,minHeight: 0),
                child: Image.asset('assets/images/Circle.png',fit: BoxFit.contain,),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left:MediaQuery.of(context).size.width/5),
              constraints: BoxConstraints(minWidth: 0),
              child: Image.asset('assets/images/Dot.png'),
            ),
            Expanded(
              child: Center(
                child: Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/5),
                  child: Text('Version 1.0',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    fontFamily: 'Poppins-Regular',
                    color: Color(0xff4838D1),
                  ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
