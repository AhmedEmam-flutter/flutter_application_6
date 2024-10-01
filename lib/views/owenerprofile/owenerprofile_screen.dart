import 'package:flutter/material.dart';
import 'package:flutter_application_6/core/containerinaritificalscreenandownerprofile.dart';
import 'package:flutter_application_6/views/homefour/widget/containerdown.dart';

class OwenerprofileScreen extends StatefulWidget {
  OwenerprofileScreen({super.key});

  @override
  State<OwenerprofileScreen> createState() => _OwenerprofileScreenState();
}

class _OwenerprofileScreenState extends State<OwenerprofileScreen> {
  // String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Owner Profile'),
        leading: InkWell(
           onTap: () {
              Navigator.pop(context);
              
            },
          child: Icon(Icons.arrow_back_ios_new_outlined)),
        actions: [
          Icon(
            Icons.bookmark,
            color: Colors.blue[900],
            size: 30,
          ),
          SizedBox(
            width: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/Builder');
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: Container(
                  width: 53,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/imagechat/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg',
                        ),
                        fit: BoxFit.fill,
                      ))),
              title: Text("ahemed emam"),
              subtitle: Text(
                'lets do it in this world',
                style: TextStyle(color: Colors.black54),
              ),
            ),
            Containerinaritificalscreenandownerprofile(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Propatry',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
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
                Containerdown(
                  image: 'assets/imagesbuilderscreen/pexels-expect-best-79873-323780.jpg',
                  text1: 'House for sale',
                  price: '\$200000',
                  place: 'b sherman in roxy',
                ),
            
          ],
        ),
      ),
    );
  }
}
