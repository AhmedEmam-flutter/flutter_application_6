import 'package:flutter/material.dart';
import 'package:flutter_application_6/views/contactus/widget/textfild.dart';

class ContactusScreen extends StatelessWidget {
  const ContactusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color.fromRGBO(240, 240, 240, 1), //Color.fromARGB(a, g, b, opacity),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Color.fromRGBO(74, 67, 236, 1),
          ),
          Positioned(
            bottom: 0,
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.75,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'CONTACT US',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Textfild(text: 'username', icon: Icon(Icons.person)),
                      SizedBox(
                        height: 20,
                      ),
                      Textfild(text: 'email', icon: Icon(Icons.email)),
                      SizedBox(
                        height: 20,
                      ),
                      Textfild(text: 'phone', icon: Icon(Icons.lock)),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextField(
                          maxLines: 5,
                          minLines: 5,
                          decoration: InputDecoration(
                            hintText: 'message',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'SEND',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(74, 67, 236, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          ),
          Positioned(
            top: 40,
            left: 20,
            child: InkWell(
               onTap: () {
              Navigator.pop(context);
              
            },
              child: Icon(
                Icons.arrow_back_ios,
                color: Color.fromRGBO(240, 240, 240, 1),
              ),
            ),
          ),
            Positioned(
            top: 40,
            right: 20,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context,'/owener');
              },
              child: Icon(
                Icons.arrow_forward,
                color: Color.fromRGBO(240, 240, 240, 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
