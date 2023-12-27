import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BackgroundSeparator extends StatelessWidget {

  final String separator;

  const BackgroundSeparator({required this.separator, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25.h,
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
                  alignment: Alignment(0, 0.4),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 0.28.dp,
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(thickness: 2, height: 5,)
        ],
      ),
    );
  }
}
