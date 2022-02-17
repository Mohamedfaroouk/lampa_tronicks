// import 'package:flutter/material.dart';
// import 'package:lampatronics/shared/constants.dart';


// class ExpandCardOutside extends StatefulWidget {
//   ExpandCardOutside({Key? key, required this.child, required this.title})
//       : super(key: key);
//   String title;
//   Widget child;
//   @override
//   _ExpandCardOutsideState createState() => _ExpandCardOutsideState();
// }

// class _ExpandCardOutsideState extends State<ExpandCardOutside> {
//   bool isopen = false;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Card(
//           elevation: 12,
//           child: ListTile(
//             title: Text(
//               widget.title,
//             ),
//             trailing: Container(
//               height: 30,
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   primary: isopen ? mainColor : whiteColor,
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(80.0)),
//                 ),
//                 child: defaultText(
//                   isopen ? "hide".tr() : "show".tr(),
//                   color: isopen ? whiteColor : Colors.black,
//                 ),
//                 onPressed: () {
//                   isopen = !isopen;
//                   setState(() {});
//                 },
//               ),
//             ),
//           ),
//         ),
//         AnimatedCrossFade(
//           duration: Duration(milliseconds: 300),
//           crossFadeState:
//               isopen ? CrossFadeState.showFirst : CrossFadeState.showSecond,
//           firstChild: widget.child,
//           secondChild: SizedBox(
//             width: double.infinity,
//           ),
//         ),
//       ],
//     );
//     ;
//   }
// }

// class ExpandCardInSide extends StatefulWidget {
//   ExpandCardInSide({Key? key, required this.child, required this.title})
//       : super(key: key);
//   String title;
//   Widget child;

//   @override
//   _ExpandCardInSideState createState() => _ExpandCardInSideState();
// }

// class _ExpandCardInSideState extends State<ExpandCardInSide> {
//   bool isopen = false;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Card(
//           color: mainColor,
//           // elevation: 12,
//           child: Column(
//             children: [
//               ListTile(
//                 title: defaultText(
//                   widget.title,
//                   color: whiteColor,
//                   fontsize: 15.fs,
//                   weight: FontWeight.bold,
//                 ),
//                 trailing: Container(
//                   height: 30,
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       primary: isopen ? mainColor : whiteColor,
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(80.0)),
//                     ),
//                     child: defaultText(
//                       isopen ? "hide".tr() : "show".tr(),
//                       color: isopen ? whiteColor : mainColor,
//                     ),
//                     onPressed: () {
//                       isopen = !isopen;
//                       setState(() {});
//                     },
//                   ),
//                 ),
//               ),
//               AnimatedCrossFade(
//                 duration: Duration(milliseconds: 500),
//                 crossFadeState: isopen
//                     ? CrossFadeState.showFirst
//                     : CrossFadeState.showSecond,
//                 firstChild: widget.child,
//                 secondChild: SizedBox(
//                   width: double.infinity,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//     ;
//   }
// }
