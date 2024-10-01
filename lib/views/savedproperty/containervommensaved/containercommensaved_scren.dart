import 'package:flutter/material.dart';

class ContainercommensavedScreen extends StatelessWidget {
  ContainercommensavedScreen({
    super.key,
    required this.image,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.text5,
    required this.text6,
    required this.text7,
    required this.height,
    required this.width,
  });
  String image;
  String text1;
  String text2;
  String text3;
  String text4;
  String text5;
  String text6;
  String text7;
  double height;
  double width;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        margin: EdgeInsets.only(left: 10, right: 20),
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                width: width,
                height: MediaQuery.of(context).size.height * 0.27,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.fill),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text1,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    text2,
                    style: TextStyle(color: Colors.blue[900]),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text3,
                    style: TextStyle(color: Colors.black54),
                  ),
                  Text(
                    text4,
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.bed,
                    color: Colors.orange[400],
                  ),
                  Text(
                    text5,
                    style: TextStyle(color: Colors.black54),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                  ),
                  Icon(
                    Icons.bathtub,
                    color: Colors.orange[400],
                  ),
                  Text(
                    text6,
                    style: TextStyle(color: Colors.black54),
                  ),
                  Spacer(),
                  Icon(
                    Icons.kitchen,
                    color: Colors.orange[400],
                  ),
                  Text(
                    text7,
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      Positioned(
          top: 10,
          right: 20,

        child: Icon(Icons.bookmark, color: Colors.blue[900],
        size: 30,)),
    ]);
  }
}
