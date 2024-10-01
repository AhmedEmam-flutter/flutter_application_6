import 'package:flutter/material.dart';
import 'package:flutter_application_6/core/conatainercommen.dart';
import 'package:flutter_application_6/core/listviewicons.dart';
import 'package:flutter_application_6/core/textfildandimage.dart';

class HomethreeScreen extends StatelessWidget {
  HomethreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.1,
              child: ListTile(
                title: Text(
                  "Hello!",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'James Bulter ',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                trailing: Image.asset(
                  'assets/images/Image (3).png',
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Textfildandimage(),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Listviewicons()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.06,
                child: Row(
                  children: [
                    Text(
                      'All propertys',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      'View all',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 10,
                    )
                  ],
                ),
              ),
            ),
            Conatainercommen(
                image: 'assets/images/lost-places-2759275.jpg',
                text1: 'Dexluer home',
                text2: '\$20000000',
                text3: '384r7ruufjrfjf',
                text4: '(ssjhd)',
                text5: '22',
                text6: '22',
                text7: '22',
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.41),
            SizedBox(
              height: 20,
            ),
            Conatainercommen(
                image: 'assets/images/gettyimages-479767332-612x612.jpg',
                text1: 'Dexluer home',
                text2: '\$20000000',
                text3: '384r7ruufjrfjf',
                text4: '(ssjhd)',
                text5: '22',
                text6: '22',
                text7: '22',
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.41),
          ],
        ),
      ),
    );
  }
}
