import 'package:flutter/material.dart';

class Listhome extends StatelessWidget {
  Listhome({super.key,
    required this.image,});
  String image;

  @override
  Widget build(BuildContext context) {
    return Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    width: 150,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.fill,
                        )),
                  );
   

  }
}