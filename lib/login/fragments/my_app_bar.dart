import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        // Status bar color
        statusBarColor: Colors.transparent,
        // Status bar icons brightness (optional)
        statusBarIconBrightness: Brightness.light, // For Android
        statusBarBrightness: Brightness.light, // For iOS
      ),
      centerTitle: true,
      title: Text('Responsive Sample', style: TextStyle(fontSize: 20.sp),),
      elevation: 0,
      backgroundColor: Colors.deepPurpleAccent,
    );
  }
}
