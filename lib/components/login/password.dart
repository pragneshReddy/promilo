import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Password extends StatelessWidget {
  const Password(
      {super.key,
      required this.hintMessage,
      required this.errorMessage,
      required this.onEditingComplete,
      required this.mTextEditingController});

  final String hintMessage;
  final String errorMessage;
  final VoidCallback onEditingComplete;
  final TextEditingController mTextEditingController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 32),
      child: TextFormField(
        controller: mTextEditingController,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            hintText: hintMessage,
            errorText: errorMessage),
        style: TextStyle(),
        onEditingComplete: onEditingComplete,
        validator: (passwordAndUserName) {
          if (passwordAndUserName != "" || passwordAndUserName != null) {
            return null;
          } else {
            return errorMessage;
          }
        },
      ),
    );
  }
}
