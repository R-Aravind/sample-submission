import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  PageController _pageController = PageController(
    viewportFraction: 0.8,
    initialPage: 0,
    keepPage: false,
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 180,
        title: Container(
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sodium Apps",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              Text(
                "Hello, Kumar 👋",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              isScrollable: true,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              controller: TabController(vsync: this, length: tabs.length),
              onTap: (int index) {
                _pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                );
              },
              tabs: tabs,
            ),
          ),
        ),
      ),
      body: Container(
        color: Theme.of(context).primaryColor,
        child: PageView.builder(
          scrollDirection: Axis.horizontal,
          pageSnapping: true,
          controller: _pageController,
          itemCount: tabs.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Page1(),
            );
          },
        ),
      ),
    );
  }
}

/* PlaceHolder content */

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
