import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/src/pages/mobileView.dart';
import 'package:shopping_app/src/pages/responsive_checker.dart';
import 'package:shopping_app/src/pages/webview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Shopping',
            theme: ThemeData(
                backgroundColor: const Color(0xffF1F3FE),
                primaryColor: const Color(0xffD0DAFF)
                // primarySwatch: const Color.fromARGB(255, 151, 179, 203),
                ),
            home: const ResponsiveChecker(
              mobileView: MyHomePage(),
              webView: WebView(),
            ),
          );
        });
        //hrhhrr
  }
}
