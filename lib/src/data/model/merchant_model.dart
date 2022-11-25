import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class Merchant {
  final bool status;
  final String logo;
  final String merchantName;
  final Color backgroundColor;

  Merchant(
      {required this.status,
      required this.logo,
      required this.merchantName,
      required this.backgroundColor});
}

class Product {
  final String productName;
  final String amount;
  final String amountLineThrough;
  final String productImage;
  Product(
      {required this.productName,
      required this.amount,
      required this.amountLineThrough,
      
      required this.productImage});
}
