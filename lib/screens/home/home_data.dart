/* PlaceHolder content for Home*/
import 'package:flutter/material.dart';

// Tabs to be displayed in Home
List<Widget> tabs = <Widget>[
  new Container(
    width: 50,
    child: Tab(text: 'Tab 1'),
  ),
  new Container(
    width: 50,
    child: Tab(text: 'Tab 2'),
  ),
  new Container(
    width: 50,
    child: Tab(text: 'Tab 3'),
  ),
  new Container(
    width: 50,
    child: Tab(text: 'Tab 4'),
  ),
  new Container(
    width: 50,
    child: Tab(text: 'Tab 5'),
  ),
];

// Pages to be displayed in Home
// Page1 if index is Odd
// Page2 otherwise
class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      pageSnapping: true,
      controller: PageController(
          viewportFraction: 0.7, initialPage: 0, keepPage: false),
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 50),
          color: Color.fromRGBO(255, 200, 249, 1),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 50),
          color: Color.fromRGBO(200, 255, 205, 1),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 50),
          color: Color.fromRGBO(200, 245, 255, 1),
        )
      ],
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      pageSnapping: true,
      controller: PageController(
          viewportFraction: 0.7, initialPage: 0, keepPage: false),
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 50),
          color: Color.fromRGBO(200, 245, 255, 1),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 50),
          color: Color.fromRGBO(255, 216, 200, 1),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 50),
          color: Color.fromRGBO(255, 200, 249, 1),
        )
      ],
    );
  }
}
