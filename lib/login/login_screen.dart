import 'package:flutter/material.dart';
import 'package:responsive_layout_sample/login/fragments/background_separator.dart';
import 'package:responsive_layout_sample/login/fragments/my_app_bar.dart';
import 'package:responsive_layout_sample/login/fragments/submit_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Column(
        children: [
          const BackgroundSeparator(separatorImage: 'resources/images/img_login.png'),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              color: Colors.white,
              child: Form(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextFormField(
                        style: TextStyle(fontSize: 18.sp),
                        cursorColor: Colors.deepPurpleAccent,
                        decoration: InputDecoration(
                          focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.deepPurpleAccent)),
                          labelText: 'Username',
                          labelStyle: TextStyle(color: Colors.grey, fontSize: 18.sp),
                        ),
                      ),
                      SizedBox(height: 1.h),
                      TextFormField(
                        style: TextStyle(fontSize: 18.sp),
                        cursorColor: Colors.deepPurpleAccent,
                        decoration: InputDecoration(
                          focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.deepPurpleAccent)),
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.grey, fontSize: 18.sp),
                          suffixIcon: IconButton(icon: Icon(Icons.visibility, size: 4.h), color: Colors.grey, onPressed: null),
                        ),
                      ),
                      SizedBox(height: 2.h),
                      const SubmitButton('LOGIN'),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
