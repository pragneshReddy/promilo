import 'package:flutter/cupertino.dart';

class LoginIcons extends StatelessWidget {
  const LoginIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(mainAxisAlignment: MainAxisAlignment.center ,children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Image.asset("assets/images/google.png"),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Image.asset("assets/images/linkedin.png"),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Image.asset("assets/images/facebook.png"),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Image.asset("assets/images/instagram.png"),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Image.asset("assets/images/whatsapp.png"),
        ),

        ],),
    );
  }
}
