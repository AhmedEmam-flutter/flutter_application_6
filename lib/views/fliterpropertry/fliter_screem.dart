import 'package:flutter/material.dart';
import 'package:flutter_application_6/core/textfildandimage.dart';

class FliterScreem extends StatefulWidget {
  FliterScreem({super.key});

  @override
  State<FliterScreem> createState() => _FliterScreemState();
}

class _FliterScreemState extends State<FliterScreem> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          ListTile(
            title: Text(
              "Hello!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'James Bulter ',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            trailing: Image.asset(
              'assets/images/Image (3).png',
            ),
          ),
          Textfildandimage(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Houses', style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Apartment',
                        style: TextStyle(color: Colors.orange, fontSize: 20),
                      )),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Office',
                      style: TextStyle(color: Colors.green, fontSize: 20),
                    )),
                Expanded(
                  flex: 2,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'land',
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                      )),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('All Properties',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                Spacer(),
                Text('View All',
                    style: TextStyle(fontSize: 10, color: Colors.black54)),
                Icon(Icons.arrow_forward, color: Colors.blue, size: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
