import 'package:flutter/material.dart';

class LoginSignup extends StatelessWidget {
  const LoginSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16,left: 16, right:32 ),
      child: Column(children: [

        Row(children:   [Expanded(child: Text("Business User?", style: TextStyle(color: Colors.grey),)),
          Text("Don't have an account", style: TextStyle(color: Colors.grey),)

        ],),
        Row(children: [ Expanded(
          child: Text(
            "Login Here",
            style: TextStyle(color: Colors.blueAccent, fontSize: 16,fontWeight: FontWeight.bold),
          ),
        ),
          Text(
            "Sign Up",
            style: TextStyle(color: Colors.blueAccent, fontSize: 16,fontWeight: FontWeight.bold),
          )

        ],)

      ],),
    );
  }
}
