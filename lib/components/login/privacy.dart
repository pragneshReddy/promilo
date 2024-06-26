import 'package:flutter/material.dart';

class Privacy extends StatelessWidget {
  const Privacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("By continuing, you agree to",
                  style: TextStyle(color: Colors.grey.shade300))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center                                     ,
            children: [
              Text(
                "Promilo's",
                style: TextStyle(color: Colors.grey.shade300),
              ),
              Text(" Terms of Use & Privacy Policy.",
                  style: TextStyle(color: Colors.black))
            ],
          )
        ],
      ),
    );
  }
}
