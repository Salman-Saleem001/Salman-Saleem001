import 'package:flutter/material.dart';

class PageViewTest extends StatefulWidget {
  PageViewTest({Key? key}) : super(key: key);

  @override
  State<PageViewTest> createState() => _PageViewTestState();
}

class _PageViewTestState extends State<PageViewTest> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: <Widget>[
        Center(
          child: Column(
            children: [
              Container(
                color: Colors.pink,
              ),
              RaisedButton(onPressed: () => {
                _controller.nextPage(duration: Duration(milliseconds: 100),curve: Curves.ease)

              }),
            ],
          ),
        ),
        Container(
          color: Colors.cyan,
        ),
        Container(
          color: Colors.deepPurple,
        ),
      ],
    );
  }
}
