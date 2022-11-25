import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/src/widgets/button.dart';

import '../values/constants.dart';
import '../values/textstyle.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: const Color(0xffD0DAFF),
      expandedHeight: 189.h,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.parallax,
        titlePadding:
            EdgeInsets.only(left: 20.w, bottom: 43.h, right: 16.w),
        centerTitle: true,
      
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
    );
  }
}
