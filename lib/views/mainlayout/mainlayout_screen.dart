import 'package:flutter/material.dart';
import 'package:flutter_application_6/views/chat/chat_screen.dart';
import 'package:flutter_application_6/views/fliterpropertry/fliter_screem.dart';
import 'package:flutter_application_6/views/homefour/home_four.dart';
import 'package:flutter_application_6/views/login/login_screen.dart';
import 'package:flutter_application_6/views/matchedpropertery/matched_screen.dart';
import 'package:flutter_application_6/views/register/register_screen.dart';
import 'package:flutter_application_6/views/setting/setting_screen.dart';
import 'package:flutter_application_6/views/splash/splash_screen.dart';

class MainlayoutScreen extends StatefulWidget {
  const MainlayoutScreen({super.key});

  @override
  State<MainlayoutScreen> createState() => _TraninngState();
}

class _TraninngState extends State<MainlayoutScreen> {
  int c = 0;

  @override
  List<Widget> screen = [
    HomeFour(),
    MatchedScreen(),
    RegisterScreen(),
    ChatScreen(),
    SettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[c],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: c,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          onTap: (index) {
            setState(() {
              c = index;
            });
          },
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'home'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.bookmark), label: 'serach'),
            BottomNavigationBarItem(
                icon: Column(
                  children: [
                    CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.purple[300],
                        child: const Icon(Icons.apps)),
                    SizedBox(
                      height: 12,
                      width: MediaQuery.of(context).size.width * 0.001,
                    ),
                  ],
                ),
                label: 'home page'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.chat), label: 'chat'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ]),
    );
  }
}
