import 'package:flutter/material.dart';

class ListtitleWidget extends StatelessWidget {
   ListtitleWidget({super.key
   ,required this.icon
   ,required this.title
   });

  Icon icon;
  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.08,
      child: Scaffold(
        body: ListTile(
          tileColor: Colors.white,
          
          leading:CircleAvatar(child: Icon(icon.icon,),),
          title: Text(title,style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}