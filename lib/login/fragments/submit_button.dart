import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubmitButton extends StatelessWidget {
  final String text;

  const SubmitButton(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24.h),
      child: Column(
        children: [
          Row(children: [
            Expanded(
              child: SizedBox(
                height: 48.h,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.h))),
                    backgroundColor: WidgetStateProperty.all(Colors.deepPurpleAccent),
                  ),
                  onPressed: null,
                  child: Text(
                    text,
                    style: const TextStyle(color: Colors.white),
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
