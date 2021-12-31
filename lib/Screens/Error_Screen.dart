import 'package:flutter/material.dart';
import 'package:pearl_book/Screens/Onboarding.dart';

class Error_Screen extends StatelessWidget {
  const Error_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(height: 54),
            Row(
              children: [
                IconButton(
                  constraints: BoxConstraints(maxWidth: 10),
                  padding: EdgeInsets.only(left: 20),
                  alignment: AlignmentDirectional.topStart,
                  icon: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.grey[400],
                  ),
                  onPressed: null,
                ),
                Expanded(
                  child: Text(
                    'Error',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins-Regular',
                      color: Color(0xff2E2E5D),
                    ),
                  ),
                ),
              ],
            ),
             SizedBox(height: 54),
            Image.asset('assets/images/Illustration4.png', fit: BoxFit.contain),
            SizedBox(height: 32),
            Text(
              'Ops! Something Went Wrong',
              style: TextStyle(
                  fontFamily: 'Poppins-Regular',
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color(0xff2E2E5D)),
            ),
            SizedBox(height: 12),
            Text(
              'Please check your internet connection\n                  and try again',
              style: TextStyle(
                  fontFamily: 'Poppins-Regular',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xff2E2E5D)),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff4838D1),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: TextButton(
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Onboarding()));
                      },
                      child: Text(
                        'Retry',
                        style: TextStyle(
                            fontFamily: 'Poppins-Regular',
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xff2E2E5D)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
