import 'package:flutter/material.dart';

class TextfieldScreen extends StatelessWidget {
  TextfieldScreen({super.key, required this.text, required this.icon});
  String text;
  Icon icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.93,
      height: MediaQuery.of(context).size.height * 0.08,
      child: TextField(
        cursorWidth: MediaQuery.of(context).size.width * 0.8,
        decoration: InputDecoration(
            fillColor: Colors.white,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(20),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(20),
            ),
            hintText: text,
            prefixIcon: icon),
      ),
    );
  }
}
