import 'package:flutter/material.dart';
import 'package:flutter_application_6/core/textfildandimage.dart';
import 'package:flutter_application_6/views/chat/widget/list.dart';
import 'package:flutter_application_6/views/chatindividal/chatindividdal.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});
  List images = [
    'assets/imagechat/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr (1).jpg',
    'assets/imagechat/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg',
    'assets/imagechat/360_F_302884605_actpipOdPOQHDTnFtp4zg4RtlWzhOASp.jpg',
    'assets/imagechat/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o (1).jpg',
    'assets/imagechat/asian-group-of-young-people-with-friends-and-backpacks-walking-together-and-happy-friends-are-taking-and-selfie-relax-time-on-holiday-concept-travel-free-photo.jpg',
    'assets/imagechat/people-3279475_640.jpg',
    'assets/imagechat/pexels-olly-733872.jpg',
    'assets/imagechat/pexels-simon-robben-55958-614810.jpg',
    'assets/imagechat/pexels-simon-robben-55958-614810.jpg'
    
  ];
  List names = [
    'John Doe',
    'Doe Doe',
    'ali ahmed',
    'amal ahmed',
    'hossam ahmed',
    'yassmin ahmed',
    'Nada elsayed',
    'samir ahmed',
    'John snow',
  ];
  List Times = [
    '10:00',
    '9:00',
    '11:00',
    '12:00',
    '4:00',
    '4:00',
    '6:00',
    '4:00',
    '1:00',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: Text('Message'),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new_outlined)) ,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 5,

                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 255, 255, 255),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: TextField(
                      decoration: InputDecoration(
                    prefixIcon: Container(
                      width: 60,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              size: 30,
                              color: Colors.purple,
                            ),
                            Text(
                              '|',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.purple),
                            ),
                          ],
                        ),
                      ),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Search--',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  )),
                ),
              ),
              Expanded(
                flex: 1, child: Image.asset('assets/images/pen.png',
                width: 30,
                height: 30),),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Expanded(
              child: ListView.builder(
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Chatindividdal(image: images[index], name: names[index])));
              },
              child: Liswidgetscreen(
                  iamge: images[index], time: Times[index], name: names[index]),
            ),
            itemCount: images.length,
          )),
        ],
      ),
    );
  }
}
