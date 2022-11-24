import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:remixicon/remixicon.dart';

import '../values/colors.dart';

Container serachBar() {
    return Container(
                margin: EdgeInsets.only(
                    left: 20.w, right: 20.w, bottom: 24.h, top: 18.h),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: ColorPallete.fillColor,
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(horizontal: 12.25.w),
                    /* -- Text and Icon -- */
                    hintText: "Search for products or stores",
                    hintStyle: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFFB3B1B1),
                    ), // TextStyle

                    prefixIcon: Icon(
                      Remix.search_2_line,
                      size: 20.sp,
                      color: const Color(0xff9494B8),
                    ), // Icon
                    /* -- Border Styling -- */
                    // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(45.0),
                    //   borderSide: const BorderSide(
                    //     width: 2.0,
                    //     color: Color(0xFFFF0000),
                    //   ), // BorderSide
                    // ), // OutlineInputBorder
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0.r),
                      borderSide: const BorderSide(
                          width: 0.0,
                          color: ColorPallete.fillColor), // BorderSide
                    ), // OutlineInputBorder
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0.r),
                      borderSide: const BorderSide(
                        width: 2.0,
                        color: Colors.grey,
                      ), // BorderSide
                    ), // OutlineInputBorder
                  ), // InputDecoration
                ),
              );
  }