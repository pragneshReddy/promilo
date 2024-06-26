import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OTPForgetPassword extends StatelessWidget {
  const OTPForgetPassword({super.key, required this.mOTPForgetPassword});

  final String mOTPForgetPassword;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 32),
      child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        Text(
          mOTPForgetPassword,
          style: TextStyle(color: Colors.blueAccent, fontSize: 16,fontWeight: FontWeight.bold),
        )
      ]),
    );
  }
}
