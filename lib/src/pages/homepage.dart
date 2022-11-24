import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/src/values/colors.dart';

import '../values/constants.dart';
import '../values/textstyle.dart';
import '../widgets/button.dart';
import '../widgets/searchBar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ScrollController scrollController =
      ScrollController(initialScrollOffset: 0.5);
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
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 11.w, horizontal: 6.w),
                              height: 16.62.h,
                              width: 17.w,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                              child: Center(
                                child: Text(
                                  "!",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: const Color.fromARGB(
                                          255, 83, 112, 230),
                                      fontWeight: FontWeight.w700),
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
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
            child: Center(
              child: Text('Scroll to see the SliverAppBar in effect.'),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Row(
            children: [
              Expanded(
                child: serachBar(), // TextField
              ),
              Container(
                margin: EdgeInsets.only(right: 20.w, bottom: 24.h, top: 18.h),
                height: 45.h,
                width: 45.w,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 144, 162, 230),
                    // image: DecorationImage(fit: BoxFit.fill,
                    //     image: AssetImage("assets/images/bike.png"),
                    //     )
                    ),
                child: Image.asset('assets/images/photo001.jpeg'),
              ),
            ],
          ),
        ),
        //   SliverToBoxAdapter(
        //       child: Container(
        //     color: const Color.fromARGB(255, 209, 215, 247),
        //     height: 414.h,
        //     // child: PageView.builder(itemCount: 5,
        //     //   itemBuilder: (context, positioned){
        //     //   return _buildPageItem(positioned);
        //     // })
        //     // child: ListView.builder(
        //     //   shrinkWrap: true,
        //     //   scrollDirection: Axis.horizontal,
        //     //   itemBuilder: (context, position){
        //     //   return _buildPageItem(position);
        //     // })
        //     child: ListView.builder(
        //       itemCount: 5,
        //       scrollDirection: Axis.horizontal,
        //       itemBuilder: (context, position){
        //       return Container(height: 170, width: 160,
        //             margin: EdgeInsetsDirectional.only(start: 21.h, end: 10.h, top: 14.h),

        //        decoration: BoxDecoration(
        //   color: Colors.white,
        //   borderRadius: BorderRadius.all(
        //     Radius.circular(10.r),
        //   ),
        //   // boxShadow: [
        //   //   BoxShadow(
        //   //     offset: const Offset(0, 1),
        //   //     blurRadius: 0,
        //   //     spreadRadius: 4.r,

        //   //   )
        //   // ]
        // ),);
        //     })
        //   ),),
        SliverList(
            delegate: SliverChildListDelegate([
          Row(
            children: const [
              Text("data"),
            ],
          ),
          Container(
            height: 414,
            color: const Color.fromARGB(255, 209, 215, 247),
            child: ListView.builder(
                itemCount: 5,
                // controller: scrollController,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      _buildPageItem(index),
                      _buildPageItem(index),
                    ],
                  );
                }),
          )
        ]))
      ],
    ));
  }

  Widget _buildPageItem(int index) {
    return Container(
      margin: EdgeInsetsDirectional.only(start: 21.h, end: 10.h, top: 14.h),
      padding: const EdgeInsets.only(),
      height: 174.h,
      width: 161.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10.r),
        ),
        // boxShadow: [
        //   BoxShadow(
        //     offset: const Offset(0, 1),
        //     blurRadius: 0,
        //     spreadRadius: 4.r,

        //   )
        // ]
      ),
      child: Stack(
        //crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Positioned(
            bottom: 73.h,
            right: 24.w,
            left: 23.w,
            child: Container(
              //alignment: Alignment.center,
             // margin: EdgeInsets.only(top: 5.h),
              height: 96,
              width: 112,
              decoration: const BoxDecoration(
                //color: Colors.amberAccent
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/mobile.jpeg"),
                ),
              ),
              //child: Image.asset('assets/images/phone002.png'),
            ),
          ),
          Positioned(
            left: 7.w,
            bottom: 118.h,
            child: Container(height: 50.h, width: 50.w,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.amber
            ),),
          ),
          Positioned(
            bottom: 41.h,
            child: Padding(
              padding: EdgeInsets.only(left: 10.w, top: 15.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Nokia G20",
                      style: TextStyle(fontFamily: 'Avenir',
                          fontSize: 14.h,
                          fontWeight: FontWeight.w800,
                          color: ColorPallete.kBlackTextColor)),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 14.h,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 14.w, bottom: 14.h, top: 10.h, right: 20.w),
              child: Row(
                children: [
                  Text("$naira 39,780",
                      style: TextStyle(
                          fontSize: 12.h,fontFamily: 'Avenir',
                          fontWeight: FontWeight.w800,
                          color: ColorPallete.blueColor)),
                  SizedBox(
                    width: 14.w,
                  ),
                  Text(
                    "$naira 39,780",
                    style: TextStyle(
                        fontSize: 12.h,
                        decoration: TextDecoration.lineThrough,
                        fontWeight: FontWeight.w500,
                        color: ColorPallete.grayColor),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
