import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BackgroundSeparator extends StatelessWidget {

  final String separator;

  const BackgroundSeparator({required this.separator, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.h,
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  width: 100.w,
                  height: 100.h,
                  color: Colors.deepPurpleAccent,
                ),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(separator, width: 100.w, fit: BoxFit.fitWidth,)),
                Align(
                  alignment: const Alignment(0, 0.5),
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
          ),
        ],
      ),
    );
  }
}
