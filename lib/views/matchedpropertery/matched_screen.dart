import 'package:flutter/material.dart';
import 'package:flutter_application_6/core/conatainercommen.dart';
import 'package:flutter_application_6/core/textfildandimage.dart';
import 'package:flutter_application_6/views/propertydtails/deatils_screen.dart';
import 'package:flutter_application_6/views/savedproperty/savedproperty_screen.dart';

class MatchedScreen extends StatefulWidget {
  MatchedScreen({super.key});

  @override
  State<MatchedScreen> createState() => _MatchedScreenState();
}

class _MatchedScreenState extends State<MatchedScreen> {
  List<String> savedProperties = [];

  void addSavedProperty(String image) {
    setState(() {
      savedProperties.add(image);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        leading: Icon(Icons.arrow_back_ios_new_outlined),
        title: Text('Matched'),
        actions: [
           InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SavedpropertyScreen(
                    savedImages: savedProperties,
                  ),
                ),
              );
            },
            child: Icon(Icons.bookmark),
          ),
          InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/terms');
              },
              child: Icon(Icons.arrow_forward)),

        ],
      ),
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Textfildandimage(),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Text(
                      'matched properties',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      'see all',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 10,
                      color: Colors.blue,
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DeatilsScreen(
                              image:
                                  'assets/imagesbuilderscreen/pexels-expect-best-79873-323780.jpg',
                              onSave: addSavedProperty,
                            )));
              },
              child: Conatainercommen(
                  image:
                      'assets/imagesbuilderscreen/pexels-expect-best-79873-323780.jpg',
                  text1: 'feeder house',
                  text2: '\$40000000',
                  text3: 'mohmaed ali stree in roxy',
                  text4: '(cool)',
                  text5: '22',
                  text6: '45',
                  text7: '12',
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: MediaQuery.of(context).size.height * 0.41),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DeatilsScreen(
                              image:
                                  'assets/images/gettyimages-479767332-612x612.jpg',
                              onSave: addSavedProperty,
                            )));
              },
              child: Conatainercommen(
                  image: 'assets/images/gettyimages-479767332-612x612.jpg',
                  text1: 'Dexluer home',
                  text2: '\$20000000',
                  text3: 'mohmaedalistreet',
                  text4: '(cool)',
                  text5: '22',
                  text6: '11',
                  text7: '12',
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: MediaQuery.of(context).size.height * 0.41),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DeatilsScreen(
                            image: 'assets/images/Image (7).png',
                            onSave: addSavedProperty,)));
              },
              child: Conatainercommen(
                  image: 'assets/images/Image (7).png',
                  text1: 'Dexluer home',
                  text2: '\$20000000',
                  text3: '384r7ruufjrfjf',
                  text4: '(ssjhd)',
                  text5: '22',
                  text6: '22',
                  text7: '22',
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.41),
            ),
          ],
        ),
      ),
    );
  }
}
