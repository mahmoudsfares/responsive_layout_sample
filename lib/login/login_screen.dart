import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_layout_sample/login/fragments/background_separator.dart';
import 'package:responsive_layout_sample/login/fragments/my_app_bar.dart';
import 'package:responsive_layout_sample/login/fragments/submit_button.dart';

class LoginScreen extends StatelessWidget {

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: const MyAppBar(),
      body: Column(
        children: [
          const BackgroundSeparator(separator: 'resources/images/img_login.png'),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Form(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(32.w, 0.h, 32.w, 8.h),
                          child: TextFormField(
                            cursorColor: Colors.deepPurpleAccent,
                            decoration: const InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.deepPurpleAccent),
                              ),
                              labelText: 'Username',
                              labelStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 32.w, vertical:  0.w),
                          child: TextFormField(
                            cursorColor: Colors.deepPurpleAccent,
                            decoration: const InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.deepPurpleAccent),
                              ),
                              labelText: 'Password',
                              labelStyle: TextStyle(color: Colors.grey),
                              suffixIcon: IconButton(
                                icon: Icon(
                                    Icons.visibility
                                ),
                                color: Colors.grey, onPressed: null,
                              ),
                            ),
                          ),
                        ),
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
