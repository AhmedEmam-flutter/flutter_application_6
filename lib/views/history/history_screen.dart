import 'package:flutter/material.dart';
import 'package:flutter_application_6/views/history/widget/containerhistory.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  List image = [
    'assets/imageallbuilders/png-transparent-woman-pointing-left-side-while-smiling-woman-smile-female-information-woman-hand-people-arm-thumbnail.png',
    'assets/imageallbuilders/pngtree-blonde-girl-smiling-holding-book-pose-illustration-png-image_1634601.jpg',
    'assets/imageallbuilders/360_F_261529596_YZWJaMnYFSCM0FSCrxs71o6RrZ9MpP4D.jpg',
    'assets/imageallbuilders/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg',
    'assets/imageallbuilders/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o (1).jpg',


  ];
  List name = [
    'Jane Doe',
    'Jana',
    'Jan reda',
    'camila',
    'Jandd',
    
  ];
  List subtitle = [
    'delivered',
    'dispatched accounting',
    'Graphic dsigner',
    'ui designer',
    'mobile application',
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('History'),
        leading: Icon(Icons.arrow_back_ios_new_outlined),
        actions: [
          
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/transaction');
            },
            child: Icon(
              Icons.arrow_forward,
              color: Colors.blue[900],
              size: 30,
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (int i = 0; i < 5; i++)
          Center(child: Containerhistory(image: image[i], name: name[i], subtitle: subtitle[i])),
         
        ],
      ),
    );
  }
}