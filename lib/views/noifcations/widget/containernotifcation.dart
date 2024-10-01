import 'package:flutter/material.dart';

class Containernotifcation extends StatelessWidget {
   Containernotifcation({super.key,
    required this.subtitle,
    required this.title,});
  String subtitle;
  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.12,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: ListTile(
        leading: CircleAvatar(child: Icon(Icons.notifications)),
        title: Text(title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black54)),
        subtitle: Text(subtitle,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black54)),
      
      )
    );
  }
}
