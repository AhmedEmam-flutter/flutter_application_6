import 'package:flutter/material.dart';

class Containerdown extends StatelessWidget {
  Containerdown({
    super.key,
    required this.image,
    required this.text1,
    required this.price,
    required this.place,
  });
  String image;
  String text1;
  String price;
  String place;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.2,
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
        child: Row(
          children: [
            Image.asset(image, width: 100, height: 100, fit: BoxFit.fill),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(text1,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue[900],fontSize: 20),),
                      Spacer(),
                      Text(price,style: TextStyle(color: Colors.blue[900]),),
                    ],
                  ),
                  Row(
                    children: [
                      Text(place),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('2 ', style: TextStyle(color: Colors.green)),
                      Icon(Icons.bed, color: Colors.green),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.19,
                      ),
                      Text(
                        '2 ',
                        style: TextStyle(color: Colors.green),
                      ),
                      Icon(
                        Icons.bathtub,
                        color: Colors.green,
                      ),
                      Spacer(),
                      Text(
                        '2 ',
                        style: TextStyle(color: Colors.green),
                      ),
                      Icon(
                        Icons.car_rental,
                        color: Colors.green,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
