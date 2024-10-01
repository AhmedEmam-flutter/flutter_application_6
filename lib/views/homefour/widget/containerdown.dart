import 'package:flutter/material.dart';

class Containerdown extends StatelessWidget {
  final String image;
  final String text1;
  final String price;
  final String place;

  Containerdown({
    super.key,
    required this.image,
    required this.text1,
    required this.price,
    required this.place,
  });

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
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Flexible(
              child: Image.asset(image, fit: BoxFit.cover),
              flex: 3,
            ),
            SizedBox(width: 20),
            Expanded(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        text1,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[900],
                            fontSize: MediaQuery.of(context).size.width * 0.05),
                      ),
                      Text(
                        price,
                        style: TextStyle(color: Colors.blue[900]),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(place),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('2', style: TextStyle(color: Colors.green)),
                      Icon(Icons.bed, color: Colors.green),
                      Text('2', style: TextStyle(color: Colors.green)),
                      Icon(Icons.bathtub, color: Colors.green),
                      Text('2', style: TextStyle(color: Colors.green)),
                      Icon(Icons.car_rental, color: Colors.green),
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
