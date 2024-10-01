import 'package:flutter/material.dart';

class Listtitlesved extends StatelessWidget {
   Listtitlesved({super.key
  , required this.icn
  , required this.title
  , required this.subtitle
  , required this.price
  });
  Icon icn;
  String title;
  String subtitle;
  String price;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icn,
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Text(price,style: TextStyle(color: Colors.blue[900]),),
    );
  }
}