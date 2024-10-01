import 'package:flutter/material.dart';
import 'package:flutter_application_6/views/register/widget/textfield_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: Color.fromRGBO(74, 67, 236, 1),
            height: MediaQuery.of(context).size.height,
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.8,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(240, 240, 240, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.06,
                    child: Center(
                      child: Text('Register',
                          style:
                              TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  TextfieldScreen(text: 'username', icon: Icon(Icons.person)),
                   SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                  TextfieldScreen(text: 'E-mail', icon: Icon(Icons.email)),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                  TextfieldScreen(text: 'password', icon: Icon(Icons.lock)),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.11,),
                 SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.09,
                  child: ElevatedButton(onPressed: (){}, child: Text('Register',
                  style: TextStyle(fontSize: 20,color: Colors.white),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(74, 67, 236, 1), 
                  ))),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.08,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                              radius: 30,
                              child: Icon(
                                Icons.facebook,
                                color: Colors.blue,
                                size: 40,
                              )),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),
                          CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 30,
                              child: Icon(
                                Icons.apple,
                                color: Colors.black,
                                size: 40,
                              )),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),
                          CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 30,
                              child: Image.asset(
                                'assets/images/google (1).png',
                                width: 30,
                                height: 30,
                              )),

                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.05,
            top: MediaQuery.of(context).size.height * 0.05,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: const Color.fromARGB(255, 10, 7, 7),
                size: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
