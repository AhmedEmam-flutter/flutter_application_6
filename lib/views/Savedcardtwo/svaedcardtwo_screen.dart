import 'package:flutter/material.dart';
import 'package:flutter_application_6/views/Savedcardtwo/list/listtitlesved.dart';
import 'package:flutter_application_6/views/savedcards/widget/cardswipe.dart';
import 'package:toggle_switch/toggle_switch.dart';

class SvaedcardtwoScreen extends StatefulWidget {
  const SvaedcardtwoScreen({super.key});

  @override
  _SvaedcardtwoScreenState createState() => _SvaedcardtwoScreenState();
}

class _SvaedcardtwoScreenState extends State<SvaedcardtwoScreen> {
  int ishow = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Cards',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(onPressed: () {
            Navigator.pushNamed(context, '/mainlayout');
          }, icon: const Icon(Icons.arrow_forward))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              child: Cardswipe(),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ToggleSwitch(
                    minWidth: MediaQuery.of(context).size.width * 0.8,
                    minHeight: MediaQuery.of(context).size.height * 0.08,
                    initialLabelIndex: ishow,
                    activeBgColor: [Colors.red],
                    inactiveBgColor: Colors.grey,
                    labels: ['Incoming', 'Outgoing'],
                    onToggle: (index) {
                      setState(() {
                        ishow = index!;
                      });
                    },
                  ),
                ],
              ),
            ),
            ishow == 0
                ? Column(
                    children: [
                      Listtitlesved(
                        icn: const Icon(
                          Icons.home,
                          color: Colors.red,
                          size: 30,
                        ),
                        title: 'Pay Builders',
                        subtitle: 'Jan 20, 2019',
                        price: '\$2000',
                      ),
                      Listtitlesved(
                        icn: const Icon(
                          Icons.home,
                          color: Colors.blue,
                          size: 30,
                        ),
                        title: 'Rent House',
                        subtitle: 'Jan 7, 2022',
                        price: '\$4000',
                      ),
                      Listtitlesved(
                        icn: const Icon(
                          Icons.person,
                          color: Colors.orange,
                          size: 30,
                        ),
                        title: 'Broker',
                        subtitle: 'Jan 20, 2024',
                        price: '\$7000',
                      ),
                      Listtitlesved(
                        icn: const Icon(
                          Icons.home_filled,
                          color: Colors.green,
                          size: 30,
                        ),
                        title: 'Buy House',
                        subtitle: 'Jan 1, 2020',
                        price: '\$9000',
                      ),
                    ],
                  )
                : Column(
                    children: [
                      Listtitlesved(
                        icn: const Icon(
                          Icons.person,
                          color: Colors.orange,
                          size: 30,
                        ),
                        title: 'Broker',
                        subtitle: 'Jan 20, 2024',
                        price: '\$7000',
                      ),
                      Listtitlesved(
                        icn: const Icon(
                          Icons.home_filled,
                          color: Colors.green,
                          size: 30,
                        ),
                        title: 'Buy House',
                        subtitle: 'Jan 1, 2020',
                        price: '\$9000',
                      ),
                      Listtitlesved(
                        icn: const Icon(
                          Icons.home,
                          color: Colors.red,
                          size: 30,
                        ),
                        title: 'Pay Builders',
                        subtitle: 'Jan 20, 2019',
                        price: '\$2000',
                      ),
                      Listtitlesved(
                        icn: const Icon(
                          Icons.home,
                          color: Colors.blue,
                          size: 30,
                        ),
                        title: 'Rent House',
                        subtitle: 'Jan 7, 2022',
                        price: '\$4000',
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
