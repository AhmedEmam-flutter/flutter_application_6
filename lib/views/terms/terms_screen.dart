import 'package:flutter/material.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms & Conditions'),
        leading: InkWell(
           onTap: () {
              Navigator.pop(context);
              
            },child: Icon(Icons.arrow_back_ios_new_outlined)),
        actions: [
          InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/contact');
              },
            child: Icon(Icons.arrow_forward)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'Terms',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                Text(
                  'A terms and conditions agreement outlines ',
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
                Text(
                  'A terms and conditions agreement outlines ',
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
                  Text(
                  'A terms and conditions agreement outlines ',
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
                  Text(
                  'A terms and conditions agreement outlines ',
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
                SizedBox(height: 20,),
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'Our Privacy Policy',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                Text(
                  'A terms and conditions agreement outlines ',
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
                Text(
                  'A terms and conditions agreement outlines ',
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
                  Text(
                  'A terms and conditions agreement outlines ',
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
                  Text(
                  'A terms and conditions agreement outlines ',
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
                 Text(
                  'A terms and conditions agreement outlines ',
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
                 Text(
                  'A terms and conditions agreement outlines ',
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
                SizedBox(height: 20,),
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'User Agreement',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                Text(
                  'A terms and conditions agreement outlines ',
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
                Text(
                  'A terms and conditions agreement outlines ',
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
                  Text(
                  'A terms and conditions agreement outlines ',
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
                  Text(
                  'A terms and conditions agreement outlines ',
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
                 Text(
                  'A terms and conditions agreement outlines ',
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
                 Text(
                  'A terms and conditions agreement outlines ',
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
                 Text(
                  'A terms and conditions agreement outlines ',
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
                 Text(
                  'A terms and conditions agreement outlines ',
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
            
            
                
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
