import 'package:flutter/material.dart';
import 'package:lampatronics/shared/constants.dart';

class LoginTextField extends StatefulWidget {
  LoginTextField({
    Key? key,
    this.controller,
    required this.keyboardType,
    this.label,
    this.hintText,
    this.suffixIcon,
    this.border,
    this.minlines,
    this.maxlines,
    this.height,
    this.onChange,
    required this.validate,
    this.focusNode,
  }) : super(key: key);
  TextInputType keyboardType;
  Widget? suffixIcon;
  TextEditingController? controller;
  String? label;
  String? hintText;
  double? height;
  String? Function(String?) validate;
  FocusNode? focusNode;
  InputBorder? border;
  int? minlines;
  int? maxlines;
  Function(String)? onChange;
  @override
  _LoginTextFieldState createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  bool? isPass;
  bool? visible;
  @override
  void initState() {
    isPass =
        widget.keyboardType == TextInputType.visiblePassword ? true : false;
    visible = isPass;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: widget.height ?? 60,
        child: TextFormField(
            onChanged: widget.onChange,
            focusNode: widget.focusNode,
            controller: widget.controller,
            keyboardType: widget.keyboardType,
            obscureText: visible!,
            minLines: widget.minlines,
            maxLines: widget.maxlines ?? 1,
            style: TextStyle(color: mainColor),
            decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.grey),

              contentPadding: EdgeInsets.symmetric(horizontal: 15),
              //   fillColor: whiteColor70,
              //  filled: true,
              hintText: widget.hintText,
              suffixIcon: widget.suffixIcon ??
                  (isPass!
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              visible = !visible!;
                            });
                          },
                          icon: Icon(
                            visible! ? Icons.visibility : Icons.visibility_off,
                            // color: Colors.black,
                          ),
                        )
                      : widget.suffixIcon),
              labelText: widget.label,
              border: widget.border ??
                  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
            ),
            validator: widget.validate),
      ),
    );
  }
}

class DefaultTextField extends StatefulWidget {
  DefaultTextField({
    Key? key,
    this.controller,
    required this.keyboardType,
    this.label,
    this.hintText,
    this.suffixIcon,
    this.border,
    this.minlines,
    this.maxlines,
    this.height,
    this.onChange,
    required this.validate,
    this.focusNode,
  }) : super(key: key);
  TextInputType keyboardType;
  Widget? suffixIcon;
  TextEditingController? controller;
  String? label;
  String? hintText;
  double? height;
  String? Function(String?) validate;
  FocusNode? focusNode;
  InputBorder? border;
  int? minlines;
  int? maxlines;
  Function(String)? onChange;
  @override
  _DefaultTextFieldState createState() => _DefaultTextFieldState();
}

class _DefaultTextFieldState extends State<DefaultTextField> {
  bool? isPass;
  bool? visible;
  @override
  void initState() {
    isPass =
        widget.keyboardType == TextInputType.visiblePassword ? true : false;
    visible = isPass;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height ?? 40,
      child: TextFormField(
          onChanged: widget.onChange,
          focusNode: widget.focusNode,
          controller: widget.controller,
          keyboardType: widget.keyboardType,
          obscureText: visible!,
          minLines: widget.minlines,
          maxLines: widget.maxlines ?? 1,
          style: TextStyle(color: mainColor),
          decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.grey),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: mainColor)),
              contentPadding: EdgeInsets.symmetric(horizontal: 15),
              fillColor: Colors.white.withOpacity(0.7),
              filled: true,
              hintText: widget.hintText,
              suffixIcon: widget.suffixIcon ??
                  (isPass!
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              visible = !visible!;
                            });
                          },
                          icon: Icon(
                            visible! ? Icons.visibility : Icons.visibility_off,
                            // color: Colors.black,
                          ),
                        )
                      : widget.suffixIcon),
              labelText: widget.label,
              border: widget.border ??
                  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: whiteColor)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: whiteColor))),
          validator: widget.validate),
    );
  }
}

///////////////////////////// Animated////////////////////////////////
class AnimatedLoginTextFeild extends StatefulWidget {
  AnimatedLoginTextFeild(
      {Key? key,
      required this.controller,
      required this.keyboardType,
      required this.label,
      this.suffixIcon,
      required this.finalwidth,
      required this.initWidth,
      required this.validate})
      : super(key: key);
  TextInputType keyboardType;
  Widget? suffixIcon;
  TextEditingController controller;
  String label;
  String? Function(String?) validate;
  double initWidth, finalwidth;

  @override
  _AnimatedLoginTextFeildState createState() => _AnimatedLoginTextFeildState();
}

class _AnimatedLoginTextFeildState extends State<AnimatedLoginTextFeild> {
  double? animatedWidth;
  FocusNode? focusNode;
  @override
  void initState() {
    super.initState();
    animatedWidth = widget.initWidth;
    focusNode = FocusNode();
    focusNode!.addListener(() {
      if (!focusNode!.hasPrimaryFocus) {
        animatedWidth = widget.initWidth;
        setState(() {});
      } else {
        setState(() {
          animatedWidth = widget.finalwidth;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: animatedWidth,
      duration: Duration(milliseconds: 200),
      child: LoginTextField(
        focusNode: focusNode,
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        suffixIcon: widget.suffixIcon,
        label: widget.label,
        validate: widget.validate,
      ),
    );
  }
}
