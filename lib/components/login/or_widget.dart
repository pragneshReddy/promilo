import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 32),
      child: Row(

        children: [

          Expanded(child: Divider(thickness: 1,color: Colors.grey.shade500,)),
          Text('or',style: TextStyle(color: Colors.black),),
          Expanded(child: Divider(thickness: 1,color: Colors.grey.shade500,)),

        ],

      ),
    );
  }
}
