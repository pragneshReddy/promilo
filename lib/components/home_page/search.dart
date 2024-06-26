import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key, required this.onEditingComplete});

  final VoidCallback onEditingComplete;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 32, top: 16),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Search",
            hintStyle: TextStyle(color: Colors.black54),
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            suffixIcon: Icon(
              Icons.mic,
              color: Colors.black,
            )),
        style: TextStyle(),
        onEditingComplete: onEditingComplete,

      ),
    );
  }
}
