
// import 'package:animations/animations.dart';
// import 'package:flutter/material.dart';
// import 'package:lampatronics/shared/constants.dart';
// import 'package:lampatronics/shared/responsive.dart';
// import 'package:lampatronics/shared/text.dart';


// class ProductWidget extends StatefulWidget {
//   @override
//   State<ProductWidget> createState() => _ProductWidgetState();
// }

// class _ProductWidgetState extends State<ProductWidget> {
//   bool incart = false;
//   int count = 1;
//   @override
//   Widget build(BuildContext context) {
//     MediaQuery.of(context).size;
//     return Padding(
//       padding: EdgeInsets.all(8.0.fs),
//       child: SizedBox(
//           width: 150.w,
//           child: Card(
//             shape:
//                 RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//             elevation: 5,
//             color: Theme.of(context).primaryColor,
//             clipBehavior: Clip.hardEdge,
//             child: Ink(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   OpenContainer(
//                     useRootNavigator:,
//                     closedShape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(15))),
//                     closedColor: Colorssparent,
//                     closedElevation: 0,
//                     openElevation: 0,
//                     openColor: backgroundColor,
//                   sitionType: ContainesitionType.fadeThrough,
//                   sitionDuration: const Duration(milliseconds: 500),
//                     openBuilder: (context, action) => SizedBox(),
//                     closedBuilder: (context, action) => Column(
//                       children: [
//                         SizedBox(
//                           height: 100,
//                           width: double.infinity,
//                           child: Image.network(
//                             'https://lampics.com/wp-content/uploads/2015/03/L298StepperColer__79861.1411263026.1280.1280.jpg',
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             children: [
//                               Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   defaultText("widget.products.name.tog()",
//                                       fontsize: 13.fs, color: whiteColor),
//                                  "0" == "0"
//                                       ? defaultText(
//                                           " "
//                                               "sr",
//                                           fontsize: 13.fs,
//                                           color: whiteColor)
//                                       : Row(
//                                           children: [
//                                             defaultText(
//                                                 ".price} " +
//                                                     "sr",
//                                                 fontsize: 10.fs,
//                                                 color: whiteColor,
//                                                 decoration:
//                                                     TextDecoration.lineThrough),
//                                             SizedBox(
//                                               width: 3.w,
//                                             ),
//                                             defaultText(
//                                                 ".discountPrice} " 
//                                                     "sr",
//                                                 fontsize: 13.fs,
//                                                 color: whiteColor)
//                                           ],
//                                         ),
//                                 ],
//                               ),
//                               Spacer(),
//                               IconButton(
//                                 onPressed: () {
//                                   incart = !incart;
//                                   count = 1;
//                                   setState(() {});
//                                 },
//                                 icon: incart
//                                     ? Icon(
//                                         Icons.remove_shopping_cart,
//                                         color: whiteColor,
//                                         size: 18.fs,
//                                       )
//                                     : Icon(
//                                         Icons.shopping_cart,
//                                         color: whiteColor,
//                                         size: 18.fs,
//                                       ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   AnimatedCrossFade(
//                     firstChild: SizedBox(
//                       width: 150.w,
//                     ),
//                     secondChild: Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(4.0),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               InkWell(
//                                 customBorder: CircleBorder(),
//                                 onTap: () {
//                                   count++;
//                                   setState(() {});
//                                 },
//                                 child: Padding(
//                                   padding: EdgeInsets.all(8.0.fs),
//                                   child: Ink(
//                                       decoration: BoxDecoration(
//                                           shape: BoxShape.circle,
//                                           color: whiteColor),
//                                       child: Icon(
//                                         Icons.add,
//                                         size: 20.fs,
//                                         color: Theme.of(context).primaryColor,
//                                       )),
//                                 ),
//                               ),
//                               Padding(
//                                 padding: EdgeInsets.symm(horizontal: 10.w),
//                                 child: defaultText("$count " + "kg",
//                                     fontsize: 13.fs,
//                                     weight: FontWeight.bold,
//                                     color: whiteColor),
//                               ),
//                               InkWell(
//                                 customBorder: CircleBorder(),
//                                 onTap: () {
//                                   count != 1 ? count-- : null;
//                                   setState(() {});
//                                 },
//                                 child: Padding(
//                                   padding: EdgeInsets.all(8.0.fs),
//                                   child: Ink(
//                                       decoration: BoxDecoration(
//                                           shape: BoxShape.circle,
//                                           color: whiteColor),
//                                       child: Icon(
//                                         Icons.horizontal_rule,
//                                         size: 20.fs,
//                                         color: Theme.of(context).primaryColor,
//                                       )),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.symm(vertical: 5),
//                           child: InkWell(
//                             onTap: () {},
//                             customBorder: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(15)),
//                             child: Ink(
//                               width: 80,
//                               decoration: BoxDecoration(
//                                 color: whiteColor,
//                                 borderRadius: BorderRadius.circular(15),
//                               ),
//                               child: defaultText("confirm",
//                                   align: TextAlign.center,
//                                   color: Theme.of(context).primaryColor,
//                                   fontsize: 14.fs),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     crossFadeState: incart
//                         ? CrossFadeState.showSecond
//                         : CrossFadeState.showFirst,
//                     duration: Duration(milliseconds: 300),
//                   )
//                 ],
//               ),
//             ),
//           )),
//     );
//   }
// }