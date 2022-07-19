import 'package:flutter/material.dart';

class BackgroundSeparator extends StatelessWidget {

  String separator;

  BackgroundSeparator({required this.separator, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 4,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4.1,
            color: Colors.deepPurpleAccent,
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(separator, width: MediaQuery.of(context).size.width, fit: BoxFit.fitWidth,)),
          const Align(
            alignment: Alignment(0, 0.4),
            child: Text(
              'Login',
              style: TextStyle(
                fontSize: 20,
                color: Colors.deepPurpleAccent,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ],
      ),
    );
  }
}
