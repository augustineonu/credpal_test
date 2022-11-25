import 'package:flutter/material.dart';
import 'package:shopping_app/src/pages/mobileView.dart';
import 'package:shopping_app/src/pages/webview.dart';

class ResponsiveChecker extends StatelessWidget {
  final Widget mobileView;
  final Widget webView;
  const ResponsiveChecker({super.key, required this.mobileView, required this.webView});

 
  @override
  Widget build(BuildContext context) {

       Widget getDeviceType() {
  final data = MediaQueryData.fromWindow(WidgetsBinding.instance.window);
  return data.size.shortestSide < 600 ? MyHomePage() : WebView();
}

 return LayoutBuilder(
  builder: (context, constraints) {
    if (constraints.maxWidth < 600) {
      return mobileView;
    } else {
      return webView;
    }
  } ,
 );
   
  }
}