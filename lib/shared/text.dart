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
            maxLines: 2,
  );
}

TextStyle headerStyle(
    {Color? color,
    double? fontsize,
    String? fontFamily,
    TextDecoration? decoration,
    FontWeight? weight}) {
  return TextStyle(
      decoration: decoration,
      color: color ?? Colors.black,
      fontWeight: FontWeight.w300,
      fontSize: 14,
      fontFamily: fontFamily ?? "cairo");
}

TextStyle categoryStyle(
    {String? fontFamily, TextDecoration? decoration, FontWeight? weight}) {
  return TextStyle(
      decoration: decoration ?? TextDecoration.none,
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 12,
      fontFamily: fontFamily ?? "cairo", 
      );
}
