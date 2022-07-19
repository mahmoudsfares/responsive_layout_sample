import 'package:flutter/material.dart';
import 'package:responsive_layout_sample/login/fragments/background_separator.dart';
import 'package:responsive_layout_sample/login/fragments/my_app_bar.dart';
import 'package:responsive_layout_sample/login/fragments/submit_button.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: const MyAppBar(),
      body: Column(
        children: [
          BackgroundSeparator(separator: 'resources/images/img_login.png'),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Form(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(32, 0, 32, 8),
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
                          padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
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
