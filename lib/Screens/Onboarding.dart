import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Onboarding extends StatefulWidget {
  Onboarding({Key? key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController _controller= PageController(initialPage: 0);
  List<String> images = [
    'assets/images/Illustration1.png',
    'assets/images/Illustration2.png',
    'assets/images/Illustration3.png',
  ];
  List<String> text = [
    'Everything for comfortable\n reading of your favourite\n                books',
    'Different formats for listening\n  to books with lables and\n                subtitles',
    'Easy search by all categories\n and outhers from all over the\n                     world',
  ];
  List<String> title = [
    'Convenient Use',
    'Online listening',
    'Search',
  ];
  _OnboardingState();
  int index1=0;
  void _increment() {
    setState(() {

        index1++;

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
            PageView.builder(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (BuildContext context, int index) {

                return _buildItem(context, index);
              },
            ),
          ],
        ),
      ),
    );
  }

  Column _buildItem(BuildContext context,@required int index1) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: MediaQuery.of(context).size.height / 10),
        Container(
          alignment: Alignment.center,
          child: Image.asset(
            images[index1],
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          height: 24,
        ),
        Center(
          child: Container(
            child: Text(
              title[index1],
              style: TextStyle(
                fontFamily: 'Poppins-Regular',
                fontWeight: FontWeight.w600,
                color: Color(0xff2E2E5D),
                fontSize: 16,
              ),
            ),
          ),
        ),
        SizedBox(height: 12),
        Center(
          child: Text(
            text[index1],
            style: TextStyle(
              fontFamily: 'Poppins-Regular',
              fontWeight: FontWeight.w400,
              color: Color(0xff4838D1),
              fontSize: 14,
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 70,
              width: MediaQuery.of(context).size.width / 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  color: index1 == 0 ? Color(0xffF77A55) : Color(0xff4838D1)),
            ),
            SizedBox(
              width: 12,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 70,
              width: MediaQuery.of(context).size.width / 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  color: index1 == 1 ? Color(0xffF77A55) : Color(0xff4838D1)),
            ),
            SizedBox(
              width: 12,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 70,
              width: MediaQuery.of(context).size.width / 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  color: index1 == 2 ? Color(0xffF77A55) : Color(0xff4838D1)),
            ),
          ],
        ),
        SizedBox(
          height: 56,
        ),
        Container(
          child: index1 == 2
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          padding: EdgeInsets.symmetric(vertical: 16),
                          height: MediaQuery.of(context).size.height / 17,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xff4838D1),
                          ),
                          child: Text(
                            'Get Started',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Poppins-Regular',
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 40),
                        height: MediaQuery.of(context).size.height / 17,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: FlatButton(
                          onPressed: null,
                          child: Text(
                            'Skip',
                            style: TextStyle(
                              fontFamily: 'Poppins-Regular',
                              fontWeight: FontWeight.w400,
                              color: Color(0xff4838D1),
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 40),
                        height: MediaQuery.of(context).size.height / 17,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xff4838D1),
                        ),
                        child: FlatButton(
                          onPressed: () {
                            _controller.nextPage(duration: Duration(milliseconds: 500),curve: Curves.ease);
                          },
                          child: Text(
                            'Next',
                            style: TextStyle(
                              fontFamily: 'Poppins-Regular',
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
        ),
      ],
    );
  }
}
