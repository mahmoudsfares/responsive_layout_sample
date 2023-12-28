import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SubmitButton extends StatelessWidget {
  final String text;

  const SubmitButton(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(3.w),
      child: Column(
        children: [
          Row(children: [
            Expanded(
              child: SizedBox(
                height: 5.h,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    )),
                    backgroundColor: MaterialStateProperty.all(
                      Colors.deepPurpleAccent,
                    ),
                  ),
                  onPressed: null,
                  child: Text(
                    text,
                    style: TextStyle(color: Colors.white, fontSize: 18.sp),
                  ),
                ),
              ),
            ),
          ])
        ],
      ),
    );
  }
}
