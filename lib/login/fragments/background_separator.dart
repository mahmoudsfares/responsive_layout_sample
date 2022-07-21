import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class BackgroundSeparator extends StatelessWidget {
  String separator;

  BackgroundSeparator({required this.separator, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height /
          ResponsiveValue(context, defaultValue: 4, valueWhen: [
            const Condition.largerThan(name: MOBILE, value: 3),
          ]).value!,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4.1,
            color: Colors.deepPurpleAccent,
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                separator,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fitWidth,
              )),
          Align(
            alignment: const Alignment(0, 0.4),
            child: Text(
              ResponsiveValue(context, defaultValue: 'desktop', valueWhen: [
                const Condition.equals(name: MOBILE, value: 'mobile'),
                const Condition.equals(name: TABLET, value: 'tablet')
              ]).value!,
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.deepPurpleAccent,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white,
              height: (ResponsiveValue(context, defaultValue: 2, valueWhen: [
                const Condition.equals(name: DESKTOP, value: 0.5)
              ]).value!).toDouble(),
            ),
          )
        ],
      ),
    );
  }
}
