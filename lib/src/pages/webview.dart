import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart' as svg;
import 'package:shopping_app/src/data/demo_data_provider.dart';
import 'package:shopping_app/src/values/colors.dart';

import '../values/textstyle.dart';
import '../widgets/appbar.dart';
import '../widgets/merchant_container.dart';
import '../widgets/product_container.dart';
import '../widgets/searchBar.dart';

class WebView extends StatefulWidget {
  const WebView({super.key});

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  ScrollController scrollController =
      ScrollController(initialScrollOffset: 0.5);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        const AppBarWidget(),
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
                  color: ColorPallete.fillColor,
                ),
                child:
                    Center(child: svg.SvgPicture.asset('assets/svg/scan.svg')),
              ),
            ],
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          Container(
            height: 414.h,
            color: const Color.fromARGB(255, 209, 215, 247),
            child: GridView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  //childAspectRatio: 1.9.sp / 1.8.sp,
                ),
                itemBuilder: (context, index) {
                  final product = products[index];
                  return InkWell(
                      onTap: () {
                        log("This is index $index");
                      },
                      child: ProductContainer(
                        productImage: product.productImage,
                        amount: product.amount,
                        amountLineThrough: product.amountLineThrough,
                        productName: product.productName,
                      ));
                }),
          ),
          SizedBox(
            height: 430.h,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 35.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Featured Merchants",
                          style: mediumTextFont()
                              .copyWith(color: const Color(0xff33334D)),
                        ),
                        Text("View me",
                            style: smallTitleFont().copyWith(
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff274FED))),
                      ],
                    ),
                  ),
                  GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemCount: merchants.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4, childAspectRatio: 1.9.sp / 2.sp),
                      // 2.5.sp / 2.sp emulator
                      itemBuilder: (context, index) {
                        final merchant = merchants[index];
                        return Merchant(
                          logo: merchant.logo,
                          status: merchant.status,
                          merchantName: merchant.merchantName,
                          backgroundColor: merchant.backgroundColor,
                        );
                      }),
                ],
              ),
            ),
          ),
        ]))
      ],
    ));
  }
}
