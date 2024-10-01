import 'package:flutter/material.dart';

class OnbordingScreen extends StatelessWidget {
  const OnbordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Center(
                child: Image.asset(
              'assets/images/freepik--background-simple--inject-38.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.65,
            )),
            Positioned(
                top: 180,
                left: 40,
                child: Image.asset(
                    'assets/images/freepik--thecnical-drawing--inject-38.png')),
            Positioned(
                top: 130,
                left: 290,
                child: Image.asset(
                    'assets/images/freepik--Meter--inject-38 (1).png')),
            Positioned(
                right: 20,
                top: 160,
                child: Image.asset('assets/images/Group 1000006130.png')),
            Positioned(
                top: 360,
                child: Image.asset(
                    'assets/images/freepik--Plant--inject-38 (2).png')),
                     Positioned(
                top: 440,
                child: Image.asset(
                    'assets/images/freepik--path--inject-38.png')),
                     Positioned(
                top: 130,
                right: 40,
                child: Image.asset(
                    'assets/images/freepik--Hammer--inject-38.png')),
                    
          ],
        ),
        SizedBox(height: 30,),
        Text('Buy Now your Dream Home ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        SizedBox(height: 60,),
        Row(
          children: [
            TextButton(onPressed: (){}, child: Text('Skip'),
              style: TextButton.styleFrom(
              foregroundColor: Colors.black54,
            ),
            ),
            Spacer(),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, '/login');
            }, child: Text('Next'),
            style: TextButton.styleFrom(
              foregroundColor: Colors.blue,
            ),
            
            ),

          ],
        ),
        Spacer(),
        Image.asset('assets/images/Rectangle 24.jpg')
      ],
    ));
  }
}
