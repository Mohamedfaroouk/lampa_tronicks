// import 'package:flutter/material.dart';
// import 'package:market_hoter/controller/get_category.dart';
// import 'package:market_hoter/model/all_categories.dart';
// import 'package:market_hoter/product_list_screen.dart';
// import 'package:market_hoter/products_category.dart';
// import 'package:market_hoter/responsive.dart';
// import 'package:market_hoter/shared/constants.dart';
// import 'package:market_hoter/shared/navigator.dart';
// import 'package:market_hoter/shared/text.dart';
// import 'package:provider/provider.dart';

// import '../animation_build_widget.dart';
// import '../category_products_screen.dart';

// class CategoryWidget extends StatelessWidget {
//   CategoryWidget({required this.category});
//   Category category;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(20.0),
//       child: InkWell(
//         onTap: () {
//           navigate(
//               context: context,
//               route: ProductsCategory(
//                 id: category.id!.toInt(),
//               ));
//           print(category.id);
//         },
//         borderRadius: BorderRadius.circular(25),
//         child: Padding(
//           padding: const EdgeInsets.only(top: 15),
//           child: Stack(
//             fit: StackFit.passthrough,
//             clipBehavior: Clip.none,
//             alignment: AlignmentDirectional.topCenter,
//             children: [
//               SizedBox(
//                 width: 90,
//                 child: Material(
//                   elevation: 6,
//                   borderRadius: BorderRadius.circular(8),
//                   color: mainColor,
//                   clipBehavior: Clip.antiAlias,
//                   child: Padding(
//                     padding: const EdgeInsets.only(
//                         top: 12, bottom: 8, right: 8, left: 8),
//                     child: FittedBox(
//                       fit: BoxFit.cover,
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: defaultText(category.name.toString(),
//                             align: TextAlign.center,
//                             color: whiteColor,
//                             weight: FontWeight.w500,
//                             fontsize: 9.fs),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Positioned(
//                   top: -36,
//                   child: CircleAvatar(
//                       backgroundColor: backgroundColor,
//                       radius: 23,
//                       child: PhysicalModel(
//                         shape: BoxShape.circle,
//                         color: Colors.grey,
//                         elevation: 3,
//                         child: CircleAvatar(
//                           backgroundImage: Image.network(
//                             "https://threefood.mobile.reeras.site/dashboard/public/storage/${category.image}",
//                             fit: BoxFit.cover,
//                           ).image,
//                         ),
//                       ))),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
