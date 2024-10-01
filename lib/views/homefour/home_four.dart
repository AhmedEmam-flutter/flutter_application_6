import 'package:flutter/material.dart';
import 'package:flutter_application_6/core/conatainercommen.dart';
import 'package:flutter_application_6/core/listviewicons.dart';
import 'package:flutter_application_6/core/textfildandimage.dart';
import 'package:flutter_application_6/views/homefour/widget/containerdown.dart';

class HomeFour extends StatelessWidget {
  HomeFour({super.key});
  List image = [
    'assets/imagesbuilderscreen/pexels-expect-best-79873-323780.jpg',
    'assets/images/gettyimages-479767332-612x612.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
             
              Textfildandimage(),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Listviewicons()),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: Row(
                    children: [
                      Text(
                        'All propertys',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/matched');
                        },
                        child: Text(
                          'View all',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 10,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.43,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Conatainercommen(
                        image: image[index],
                        text1: 'Dexluer home',
                        text2: '\$20000000',
                        text3: 'khalid ali stree in roxy',
                        text4: '(cool)',
                        text5: '22',
                        text6: '22',
                        text7: '22',
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.5);
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: image.length,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Containerdown(
                  image: 'assets/images/Image (4).png',
                  text1: 'House for sale',
                  price: '\$200000',
                  place: 'b sherman in roxy'),
              Containerdown(
                image: 'assets/images/Image (6).png',
                text1: 'House for sale',
                price: '\$200000',
                place: 'b sherman in roxy',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
