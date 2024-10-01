import 'package:flutter/material.dart';
import 'package:flutter_application_6/views/noifcations/widget/containernotifcation.dart';

class NotiffcationScrenn extends StatelessWidget {
  const NotiffcationScrenn({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Notifications'),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new_outlined)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Containernotifcation(subtitle: 'lets do it in this world', title: 'Broker'),
              Containernotifcation(subtitle: 'lets do it in this world', title: 'Saller'),
              Containernotifcation(subtitle: 'Claim 50% offer off', title: 'Offer'),
              Containernotifcation(subtitle: '35% off for you', title: 'Broker'),
              Containernotifcation(subtitle: 'lets do it in this world', title: 'Broker'),
              Containernotifcation(subtitle: 'lets do it in this world', title: 'Broker')
            ],
          ),
        ),
      ),
    );
  }
}