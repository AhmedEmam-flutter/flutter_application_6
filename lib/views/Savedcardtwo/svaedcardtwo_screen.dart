import 'package:flutter/material.dart';
import 'package:flutter_application_6/views/Savedcardtwo/list/listtitlesved.dart';
import 'package:flutter_application_6/views/savedcards/widget/cardswipe.dart';

class SvaedcardtwoScreen extends StatelessWidget {
   SvaedcardtwoScreen({super.key});
   
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Cards',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              child: Cardswipe(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 200,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Expanses',
                          style: TextStyle(color: Colors.white),
                        ),
                        style:
                            ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Incomeing',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
            ),
            Listtitlesved(
              icn: Icon(
                Icons.home,
                color: Colors.red,
                size: 30,
              ),
              title: 'pay Builders',
              subtitle: 'Jan 20,2019',
              price: '\$2000',
            ),
            Listtitlesved(
              icn: Icon(
                Icons.home,
                color: Colors.blue,
                size: 30,
              ),
              title: 'Rent House',
              subtitle: 'Jan 7,2022',
              price: '\$4000',
            ),
            Listtitlesved(
              icn: Icon(
                Icons.person,
                color: Colors.orange,
                size: 30,
              ),
              title: 'BRoker',
              subtitle: 'Jan 20,2024',
              price: '\$7000',
            ),
            Listtitlesved(
              icn: Icon(
                Icons.home_filled,
                color: Colors.green,
                size: 30,
              ),
              title: 'Buy House',
              subtitle: 'Jan 1,2020',
              price: '\$9000',
            ),
          ],
        ),
      ),
    );
  }
}
