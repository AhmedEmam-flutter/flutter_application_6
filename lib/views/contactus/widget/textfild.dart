import 'package:flutter/material.dart';

class Textfild extends StatelessWidget {
   Textfild({super.key
  ,required this.text
  ,required this.icon});
  String text;
  Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: 50,
      child: TextField(
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
          prefixIcon: icon,
        )
        
      ),
    );
  }
}