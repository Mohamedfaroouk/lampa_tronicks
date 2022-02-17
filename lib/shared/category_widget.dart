import 'package:flutter/material.dart';
import 'package:lampatronics/screens/category_screen.dart';
import 'package:lampatronics/shared/navigator.dart';
import 'package:lampatronics/shared/text.dart';
import 'package:lampatronics/text.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget(
      {required this.imageCategory, required this.color, required this.text});
  String imageCategory, text;
  Color color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navigate(context: context, route: CategoryScreen());
      },
      child: Column(
        children: [
          Container(
            width: 50,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(9)),
              color: Colors.white,
            ),
            child: Center(
              child: Image.network(
                imageCategory,
                color: color,
              ),
            ),
          ),
          defaultText(text, style: categoryStyle())
        ],
      ),
    );
  }
}
