import 'package:flutter/material.dart';
import 'package:lampatronics/shared/constants.dart';

//implements SnackBar
class Snak extends StatelessWidget {
  Snak(this.mssg);
  String mssg;
  @override
  Widget build(BuildContext context) {
    return SnackBar(
      backgroundColor: Color(0xFF757575),
      elevation: 2.0,
      content: Text(
        mssg,
        style: TextStyle(color: whiteColor),
      ),
    );
  }
}

SnackBar snac(String mssg) {
  final snackBar = SnackBar(
    backgroundColor: Color(0xFF757575),
    elevation: 2.0,
    duration: Duration(seconds: 2),
    content: Text(
      mssg,
      style: TextStyle(color: Colors.white),
    ),
  );
  return snackBar;
}
