import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword(
      {super.key,
      required this.mForgetPassword,
      required this.onEditingComplete});

  final String mForgetPassword;
  final Function(bool?) onEditingComplete;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 32),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Expanded(
            child: Row(
          children: [
            Checkbox(value: false, onChanged: onEditingComplete),
            Text("Remember Me", style: TextStyle(color: Colors.grey),)
          ],
        )),
        Text(
          mForgetPassword,
          style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 16,
              fontWeight: FontWeight.bold),
        )
      ]),
    );
  }
}
