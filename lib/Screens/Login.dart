import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool? _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 8),
                    constraints: BoxConstraints(minWidth: 0, minHeight: 0),
                    child: Image.asset(
                      'assets/images/Circle.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 5),
                    constraints: BoxConstraints(minWidth: 0),
                    child: Image.asset('assets/images/Dot.png'),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 56.7, left: 48),
                      child: Text(
                        'Login to your account',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins-Regular',
                          color: Color(0xff2E2E5D),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 40, top: 16, right: 40),
                      padding: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                          color: Color(0xffF5F5FA),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                            hintStyle: TextStyle(
                              fontFamily: 'Poppins-Regular',
                            )),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 40, top: 16, right: 40),
                      padding: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                          color: Color(0xffF5F5FA),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: TextField(
                        obscureText: true,
                        obscuringCharacter: '*',
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            fontFamily: 'Poppins-Regular',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        SizedBox(width: 52),
                        Checkbox(
                            checkColor: Colors.black,
                            value: _isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                _isChecked = value;
                              });
                            }),
                        Text(
                          'Remember me',
                          style: TextStyle(
                            fontFamily: 'Poppins-Regular',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Color(0xff4838D1),
                            ),
                            margin: EdgeInsets.symmetric(horizontal: 40),
                            child: FlatButton(
                              onPressed: () {},
                              child: Text(
                                'Login',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Poppins-Regular',
                                    fontSize: 16,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 44),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forget Password ?',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontFamily: 'Poppins-Regular',
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Colors.deepOrange,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 36),
                    Container(
                      child: Text(
                        'Or login with',
                        style: TextStyle(
                          fontFamily: 'Poppins-Regular',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xff2E2E5D),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container
                          (
                          height: 56,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(
                              style: BorderStyle.solid,
                              width: 1.0,
                              color: Color(0xff4838D1),
                            ),
                          ),
                          child: SignInButton.mini(
                            elevation: 5.0,
                            buttonType: ButtonType.google,
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(width: 16),
                        Container(
                          height: 56,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(
                                style: BorderStyle.solid,
                                width: 1.0,
                                color: Color(0xff4838D1),
                            ),
                          ),
                          child: SignInButton.mini(
                            onPressed: () {},
                            buttonType: ButtonType.facebook,
                          ),
                        ),
                        SizedBox(width: 16),
                        Container(
                          height: 56,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(
                                style: BorderStyle.solid,
                                width: 1.0,
                                color: Color(0xff4838D1),
                            ),
                          ),
                          child: SignInButton.mini(
                            buttonType: ButtonType.twitter,
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
