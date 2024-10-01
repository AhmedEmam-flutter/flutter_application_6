//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_6/core/containerinaritificalscreenandownerprofile.dart';

class ArtificalScreen extends StatefulWidget {
  ArtificalScreen({super.key});

  @override
  State<ArtificalScreen> createState() => _ArtificalScreenState();
}

class _ArtificalScreenState extends State<ArtificalScreen> {
  bool isthetrue = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Artifical Intelligence'),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
              
            },
            child: Icon(Icons.arrow_back_ios_new_outlined)),
          actions: [
            Icon(
              Icons.bookmark,
              color: Colors.blue[900],
              size: 40,
            ),
            SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/estate');
                
              },
              child: Icon(
                Icons.arrow_forward,
                color: Colors.blue[900],
                size: 40,
              ),
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Stack(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.4,
                          width: MediaQuery.of(context).size.width * 0.85,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/imagesbuilderscreen/Untitled-design-2019-11-15T160558.776.jpg'),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              )),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.36,
                          left: MediaQuery.of(context).size.width * 0.2,
                          child: Container(
                              child: Text(
                            'UBAN LANSCAPE',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54),
                          )),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '2500\$',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          width: 140,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.purple,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.edit),
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'edit profile',
                                      style: TextStyle(color: Colors.white),
                                    ))
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(child: Icon(Icons.kitchen)),
                            Text('4 Kitchen')
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(child: Icon(Icons.bed)),
                            Text('4 bed')
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(child: Icon(Icons.bathroom)),
                            Text('4 bathroom')
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Descerpation'),
                        Text(
                          'that good and enough to buy it every where',
                          style: TextStyle(color: Colors.black54),
                        ),
                        Text(
                          'that good a',
                          style: TextStyle(color: Colors.black54),
                        )
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Container(
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/imagesbuilderscreen/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
                              ),
                              fit: BoxFit.fill,
                            ))),
                    title: Text('amed emam'),
                    subtitle: Text(
                      'lets do it in this world',
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                  Containerinaritificalscreenandownerprofile(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
