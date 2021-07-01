import 'package:flutter/material.dart';

const primaryColor = Color.fromRGBO(255, 251, 236, 1);
const String fontNameDefault = "Roboto";

final themeData = ThemeData(
  primaryColor: primaryColor,
  canvasColor: primaryColor,
  appBarTheme: AppBarTheme(
    textTheme: TextTheme(headline6: appBarTextStyle),
  ),
  tabBarTheme: TabBarTheme(
    labelStyle: tabTextStyle,
    unselectedLabelStyle: tabTextStyle,
  ),
  textTheme: TextTheme(
    headline6: titleTextStyle,
    bodyText2: bodyTextStyle,
  ),
);

const appBarTextStyle = TextStyle(
  fontFamily: fontNameDefault,
  fontWeight: FontWeight.w400,
  color: Colors.white,
);

const titleTextStyle = TextStyle(
  fontFamily: fontNameDefault,
  fontWeight: FontWeight.w400,
  color: Colors.black,
);

const bodyTextStyle = TextStyle(
  fontFamily: fontNameDefault,
  fontWeight: FontWeight.w400,
  color: Colors.black,
);

const tabTextStyle = TextStyle(
  fontFamily: fontNameDefault,
  fontWeight: FontWeight.w300,
  fontStyle: FontStyle.italic,
);
