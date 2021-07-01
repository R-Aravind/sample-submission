import 'package:flutter/material.dart';

// Imports PlaceHolder Data for Home
import './home_data.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late PageController _pageController;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: tabs.length);
    _pageController = new PageController(
      viewportFraction: 0.8,
      initialPage: 0,
      keepPage: false,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _changePage(int index) {
    /// changes current page to page at [index]

    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  void _changeTab(int index) {
    /// changes current tab to tab at [index]

    _tabController.animateTo(index);
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
              controller: _tabController,
              onTap: _changePage,
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
          onPageChanged: _changeTab,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: (index % 2 == 0) ? Page1() : Page2(),
            );
          },
        ),
      ),
    );
  }
}
