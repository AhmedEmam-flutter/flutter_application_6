import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: const Color.fromRGBO(74, 67, 236, 1),
            height: MediaQuery.of(context).size.height,
          ),
          Positioned(
              left: 110,
              bottom: 500,
              child: Image.asset(
                'assets/images/Logo.png',
                color: Colors.white,
              )),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(240, 240, 240, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('login',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 140,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Username',
                              border: InputBorder.none,
                              prefixIcon: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 10,
                                  child: Icon(Icons.person)),
                            ),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.lock),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'forgot password?',
                              style: TextStyle(color: Colors.black54),
                            )),
                        const Spacer(),
                        SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/qustion');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromRGBO(74, 67, 236, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Text(
                              'Login',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                            backgroundColor: Colors.white10,
                            radius: 20,
                            child: Icon(
                              Icons.facebook,
                              color: Colors.blue,
                              size: 40,
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                        const CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 20,
                            child: Icon(
                              Icons.apple,
                              color: Colors.black,
                              size: 40,
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                        CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 20,
                            child: Image.asset(
                              'assets/images/google (1).png',
                              width: 40,
                              height: 40,
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
