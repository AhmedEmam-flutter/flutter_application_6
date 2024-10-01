import 'package:flutter/material.dart';
import 'package:flutter_application_6/views/setting/widget/listtitle_widget.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Setting'),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
            
          },
          child: Icon(Icons.arrow_back_ios_new_outlined)),
        actions: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/transication');
            },
            child: Icon(
              Icons.arrow_forward,
              color: Colors.blue[900],
              size: 30,
            ),
          ),
          SizedBox(
            width: 20,
          ),
      ],),
      body: Column(
        children: [
          ListtitleWidget(
            icon: Icon(Icons.person),
            title: 'Profile',
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.1,
          ),
          ListtitleWidget(
            icon: Icon(Icons.key),
            title: 'Change Password',
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.1,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/terms');
            },
            child: ListtitleWidget(
              icon: Icon(Icons.privacy_tip),
              title: 'PRIVACY',
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.12,
          ),
          ListtitleWidget(
            icon: Icon(Icons.calendar_month),
            title: 'Date Savar',
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.1,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/notification');
            },
            child: ListtitleWidget(
              icon: Icon(Icons.alarm),
              title: 'Notification',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Icon( Icons.logout,size: 30,color: Colors.blue,),
                SizedBox(width: 10,),
                Text('Logout',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
