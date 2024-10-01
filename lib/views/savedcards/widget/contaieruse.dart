import 'package:flutter/material.dart';

class Contaieruse extends StatelessWidget {
   Contaieruse({super.key,
    required this.image,});
  String image;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          image: DecorationImage(
            image: AssetImage(
              image),
            fit: BoxFit.fill,
            
          ),
        ),
      ),
    );
  }
}
