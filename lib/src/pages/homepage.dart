import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../values/constants.dart';
import '../values/textstyle.dart';
import '../widgets/button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        // appBar: AppBar(elevation: 0,
        //   backgroundColor: const Color(0xffD0DAFF),
        //   title: const Text(""),
        // ),
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: const Color(0xffD0DAFF),
          expandedHeight: 189.h,
          flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.parallax,
            titlePadding:
                EdgeInsets.only(left: 20.w, bottom: 43.h, right: 16.w),
            centerTitle: true,
            //       title: Stack(
            //         children:[ Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //              Text("Pay later\neverywhere",
            //             style: TextStyle(fontSize: 20.sp),),
            //             Text(
            //               "Shopping limit: $naira 0",
            //               style: smallTitleFont(),
            //             )
            //           ],
            //         ),
            // ]),
            background: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 20.w,
                      right: 16.w,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Pay later\neverywhere",
                              style: largeTextFont(),
                            ),
                            Positioned(
                              right: 50,
                              bottom: 10,
                              child: Container(
                                margin:  EdgeInsets.symmetric(vertical: 11.w, horizontal: 6.w),
                                height: 16.62.h,
                                width: 17.w,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle, color: Colors.white),
                                child: Center(
                                  child: Text(
                                    "!",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: const Color.fromARGB(255, 83, 112, 230),
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Shopping limit: ${naira}0",
                              style: smallTitleFont(),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            const Button(
                              title: 'Activate Credit',
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
         
        ),
        SliverList(delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color:  Colors.white,
                  height: 100.0,
                  child: Row(
                    children:  [
                      const Text('hello', textScaleFactor: 1),
                      Container(child: const Text("data"),),
                    ],
                  ),
                );
              },
              //childCount: 20,
            )),
      ],
      
    ));
  }
}
