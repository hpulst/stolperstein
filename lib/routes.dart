import 'package:flutter/widgets.dart';

import 'pages/credits.dart';
import 'pages/home/home.dart';
import 'pages/profile.dart';
import 'pages/settings.dart';
import 'pages/splash_screen.dart';
import 'pages/picture_scanner/picture_scanner.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/': (BuildContext context) => SplashScreen(),
  '/home': (BuildContext context) => MyHomePage(),
  '/pictureScanner': (BuildContext context) => PictureScanner(),
  '/profile': (BuildContext context) => ProfilePage(),
  '/settings': (BuildContext context) => SettingsPage(),
  '/credits': (BuildContext context) => CreditsPage()
};