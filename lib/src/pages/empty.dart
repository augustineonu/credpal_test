// SliverList(
//                     delegate: SliverChildListDelegate([
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Expanded(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: <Widget>[
//                             Padding(
//                               padding: EdgeInsets.only(top: 20, left: 25),
//                               child: Text(
//                                 bookName,
//                                 style: GoogleFonts.openSans(
//                                   fontSize: 22,
//                                   fontWeight: FontWeight.w700,
//                                   color: kBlackTextColor,
//                                 ),
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsets.only(top: 16, left: 25),
//                               child: Text(
//                                 author,
//                                 style: GoogleFonts.openSans(
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.w700,
//                                   color: Color(0xFF33b537),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(width: 60),
//                       Padding(
//                         padding: EdgeInsets.only(top: 16, right: 25),
//                         child: Text(
//                           '\$$price',
//                           style: GoogleFonts.openSans(
//                             fontSize: 28,
//                             fontWeight: FontWeight.w700,
//                             color: kPriceColor,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Container(
//                     height: 25,
//                     margin: EdgeInsets.only(top: 30),
//                     padding: EdgeInsets.only(left: 25),
//                     child: DefaultTabController(
//                       length: 3,
//                       child: TabBar(
//                         isScrollable: true,
//                         labelColor: kBlackTextColor,
//                         unselectedLabelColor: kGreyTextColor,
//                         labelStyle: GoogleFonts.openSans(
//                           fontSize: 14,
//                           fontWeight: FontWeight.w700,
//                         ),
//                         unselectedLabelStyle: GoogleFonts.openSans(
//                           fontSize: 14,
//                           fontWeight: FontWeight.w600,
//                         ),
//                         tabs: [
//                           TabLabels(textLabel: 'Description'),
//                           TabLabels(textLabel: 'Review'),
//                           TabLabels(textLabel: 'Related'),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(top: 16, left: 25, right: 25),
//                     child: Text(
//                       'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using',
//                       style: GoogleFonts.openSans(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w500,
//                         color: kGreyTextColor,
//                       ),
//                     ),
//                   ),
//                 ]))
//               ],
//             ),