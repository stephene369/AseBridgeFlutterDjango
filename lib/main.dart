import 'package:asebridgeflutterdjango/responsive/mobile_screen_layout.dart';
import 'package:asebridgeflutterdjango/responsive/responsive_layout_screen.dart';
import 'package:asebridgeflutterdjango/responsive/web_screen_layout.dart';
import 'package:asebridgeflutterdjango/utils/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Intagram Clone ',
      theme: ThemeData.light()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      home: ResponsiveLayout(
          webScreenLayout: WebScreenLayout(),
          mobileScreenLayout: MobileScreenLayout()),
    );
  }
}
