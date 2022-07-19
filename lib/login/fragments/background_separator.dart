import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BackgroundSeparator extends StatelessWidget {

  String separator;

  BackgroundSeparator({required this.separator, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Device.screenType == ScreenType.mobile ? 20.h : 30.h,
      color: Colors.deepPurpleAccent,
      child: Stack(
        children: [
        Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(separator, width: 100.w, fit: BoxFit.fitWidth,)),
        Align(
          alignment: Alignment(0.w, 0.05.h),
          child: Text(
            'Login',
            style: TextStyle(
                fontSize: 20.sp,
                color: Colors.deepPurpleAccent,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        ],
      ),
    );
  }
}
