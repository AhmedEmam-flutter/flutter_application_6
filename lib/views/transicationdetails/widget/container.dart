import 'package:flutter/material.dart';

class Containertranscatin extends StatelessWidget {
  Containertranscatin({super.key,
  required this.price,
  required this.text1});
  String price ;
  String text1;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
      width: MediaQuery.of(context).size.width*0.9,
      height: MediaQuery.of(context).size.height * 0.1,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text1),
            Text(price,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue[900]
            ),)
          ],
        ),
      ),
      
    );
  }
}