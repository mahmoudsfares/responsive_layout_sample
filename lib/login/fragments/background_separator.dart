import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackgroundSeparator extends StatelessWidget {

  final String separator;

  const BackgroundSeparator({required this.separator, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: Stack(
        children: [
          Container(
            width: double.maxFinite,
            height: 200.h,
            color: Colors.deepPurpleAccent,
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                separator,
                width: double.maxFinite,
                fit: BoxFit.fitWidth,
              )),
          Align(
            alignment: const Alignment(0, 0.4),
            child: Text(
              'Login',
              style: TextStyle(fontSize: 20.sp, color: Colors.deepPurpleAccent, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
