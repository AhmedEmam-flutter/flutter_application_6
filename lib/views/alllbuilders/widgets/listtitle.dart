import 'package:flutter/material.dart';

class Listtitle extends StatelessWidget {
   Listtitle({super.key,
    required this.name,
    required this.iamge,
    required this.icon});
  String name;
  String iamge;
  Icon icon ;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 53,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          image: DecorationImage(
            image: AssetImage(iamge,
            ),
            fit: BoxFit.fill,
          )
        )
      ),
      title: Text(name),
      subtitle: Text('lets do it in this world',style: TextStyle(color: Colors.black54),),
      trailing: icon);
  }
}