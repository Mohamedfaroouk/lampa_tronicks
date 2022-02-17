import 'package:flutter/material.dart';

Text defaultText(String text,
    {TextAlign? align,
    TextStyle? style,
    Color? color,
    double? fontsize,
    String? fontFamily,
    TextDecoration? decoration,
    FontWeight? weight}) {
  return Text(
    text,
    textAlign: align,
    style: style ??
        TextStyle(
            decoration: decoration,
            color: color ?? Colors.black,
            fontWeight: weight,
            fontSize: fontsize,
            fontFamily: fontFamily ?? "cairo"),
  );
}
