import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginText extends StatelessWidget {
  const LoginText({super.key, required this.mLoginText, required this.mColor });
final String mLoginText;
final Color mColor;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32.0),
      child: Text(mLoginText , style: TextStyle(color:mColor, fontSize: 16   ),),
    );
  }
}
