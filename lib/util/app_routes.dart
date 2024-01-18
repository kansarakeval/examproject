import 'package:examproject/screen/Home/view/home_screen.dart';
import 'package:examproject/screen/detail/view/detail_screen.dart';
import 'package:examproject/splash/view/splash_screen.dart';
import 'package:flutter/material.dart';

Map<String,WidgetBuilder> app_routes={
  '/': (context) => const SplashScreen(),
  'home': (context) => const HomeScreen(),
  'detail': (context) => const DetailScreen(),
};