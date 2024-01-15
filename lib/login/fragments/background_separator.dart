import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BackgroundSeparator extends StatelessWidget {
  final String separatorImage;

  const BackgroundSeparator({required this.separatorImage, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Device.screenType == ScreenType.mobile ? 20.h : 30.h,
      child: Stack(
        children: [
          Container(color: Colors.deepPurpleAccent),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(separatorImage, width: 100.w, fit: BoxFit.fitWidth),
          ),
          Align(
            alignment: Alignment(0.w, 0.05.h),
            child: Text('Login', style: TextStyle(fontSize: 20.sp, color: Colors.deepPurpleAccent, fontWeight: FontWeight.bold)),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(color: Colors.white, height: 2),
          )
        ],
      ),
    );
  }
}
