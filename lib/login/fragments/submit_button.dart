import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SubmitButton extends StatelessWidget {
  final String text;

  const SubmitButton(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(children: [
            Expanded(
              child: SizedBox(
                height: 7.h,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0.h),
                    )),
                    backgroundColor: MaterialStateProperty.all(
                      Colors.deepPurpleAccent,
                    ),
                  ),
                  onPressed: null,
                  child: Text(
                    text,
                    style: TextStyle(color: Colors.white, fontSize: 20.sp),
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
