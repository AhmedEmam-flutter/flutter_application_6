import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  AudioPlayer audioPlayer = AudioPlayer();
  void initState() {
      super.initState();
      Timer(Duration(seconds: 5), () {
        Navigator.pushNamed(context, '/onbording');
      });
      music();
    }
    void music(){
      audioPlayer.play(AssetSource('music/quothello-therequot-158832.mp3'));
    }

    void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Center(
          child: Image.asset(
            'assets/images/Logo.png',
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}
