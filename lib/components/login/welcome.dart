import 'package:flutter/cupertino.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key,required this.mTitle});

  final String mTitle;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        mTitle,
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22, color: Color(0xFF000000)),
      ),
    );
  }
}
