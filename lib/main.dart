import 'package:flutter/material.dart';
import 'package:responsive_layout_sample/login/login_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (BuildContext context, Orientation b, ScreenType c) => MaterialApp(
        home: LoginScreen(),
      ),
    );
  }
}
