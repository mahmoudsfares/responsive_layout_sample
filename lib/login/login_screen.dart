import 'package:flutter/material.dart';
import 'package:responsive_layout_sample/login/fragments/background_separator.dart';
import 'package:responsive_layout_sample/login/fragments/my_app_bar.dart';
import 'package:responsive_layout_sample/login/fragments/submit_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: MyAppBar(),
      backgroundColor: Colors.deepPurpleAccent,
      body: Column(
        children: [
          const BackgroundSeparator(separator: 'resources/images/img_login.png'),
          Expanded(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
              child: Form(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TextFormField(
                          cursorColor: Colors.deepPurpleAccent,
                          decoration: InputDecoration(
                            focusedBorder: const UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.deepPurpleAccent),
                            ),
                            labelText: 'Username',
                            labelStyle: TextStyle(color: Colors.grey, fontSize: 16.sp),
                          ),
                        ),
                        SizedBox(height: 2.h),
                        TextFormField(
                          cursorColor: Colors.deepPurpleAccent,
                          decoration: InputDecoration(
                            focusedBorder: const UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.deepPurpleAccent),
                            ),
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.grey, fontSize: 16.sp),
                            suffixIcon: const IconButton(
                              icon: Icon(Icons.visibility),
                              color: Colors.grey, onPressed: null,
                            ),
                          ),
                        ),
                        SizedBox(height: 3.h),
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
