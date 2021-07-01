import 'package:flutter/material.dart';
import './screens/home.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primaryColor: Color.fromRGBO(255, 251, 236, 1),
      ),
    );
  }
}
