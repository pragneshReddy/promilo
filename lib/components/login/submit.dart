import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class SubmitButton extends StatelessWidget {
   SubmitButton({super.key, required this.onEditingComplete , required this.btnEnabled});

  final VoidCallback onEditingComplete;
bool btnEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 32, top: 16),
      child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(

              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  backgroundColor: Colors.blue),
              child: Text(
                "Submit",
                style: TextStyle(color: Colors.white, fontSize: 21),
              ),
              // onPressed: onEditingComplete,
            onPressed: btnEnabled ? onEditingComplete : onEditingComplete,),
          ]),
    );
  }
}
