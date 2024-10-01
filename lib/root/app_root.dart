import 'package:flutter/material.dart';
import 'package:flutter_application_6/core/textfildandimage.dart';
import 'package:flutter_application_6/views/Savedcardtwo/svaedcardtwo_screen.dart';
import 'package:flutter_application_6/views/alllbuilders/allbulders_screen.dart';
import 'package:flutter_application_6/views/artifical/Artifical_screen.dart';
import 'package:flutter_application_6/views/buliderprofile/builder_screen.dart';
import 'package:flutter_application_6/views/callscreen/call_screen.dart';
import 'package:flutter_application_6/views/chat/chat_screen.dart';
import 'package:flutter_application_6/views/chat/widget/list.dart';
import 'package:flutter_application_6/views/chatindividal/chatindividdal.dart';
import 'package:flutter_application_6/views/contactus/contactus_screen.dart';
import 'package:flutter_application_6/views/fliterpropertry/fliter_screem.dart';
import 'package:flutter_application_6/views/history/history_screen.dart';
import 'package:flutter_application_6/views/homefour/home_four.dart';
import 'package:flutter_application_6/views/homethree/homethree_screen.dart';
import 'package:flutter_application_6/views/login/login_screen.dart';
import 'package:flutter_application_6/views/mainlayout/mainlayout_screen.dart';
import 'package:flutter_application_6/views/map/map_screen.dart';
// import 'package:flutter_application_6/views/matchedpropertery/mainlayout_screen.dart';
import 'package:flutter_application_6/views/matchedpropertery/matched_screen.dart';
import 'package:flutter_application_6/views/noifcations/notiffcation_screnn.dart';
import 'package:flutter_application_6/views/onbording/onbording_screen.dart';
import 'package:flutter_application_6/views/owenerprofile/owenerprofile_screen.dart';
import 'package:flutter_application_6/views/propertydtails/deatils_screen.dart';
import 'package:flutter_application_6/views/qustion/qustion_screen.dart';
import 'package:flutter_application_6/views/register/register_screen.dart';
import 'package:flutter_application_6/views/savedcards/savedcards_screen.dart';
import 'package:flutter_application_6/views/savedproperty/savedproperty_screen.dart';
import 'package:flutter_application_6/views/searchelmation/search.dart';
import 'package:flutter_application_6/views/setting/setting_screen.dart';
import 'package:flutter_application_6/views/splash/splash_screen.dart';
import 'package:flutter_application_6/views/terms/terms_screen.dart';
import 'package:flutter_application_6/views/total%20elmantion/totalelimation_screen.dart';
import 'package:flutter_application_6/views/transicationdetails/transicaton_screen.dart';
import 'package:flutter_application_6/views/videocall/videocall_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'Splash': (context) => SplashScreen(),
        '/onbording': (context) => OnbordingScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/qustion': (context) => QustionScreen(),
        '/home': (context) => HomeFour(),
        '/matched': (context) => MatchedScreen(),
        '/terms': (context) => TermsScreen(),
        '/contact': (context) => ContactusScreen(),
        '/owener': (context) => OwenerprofileScreen(),
        '/Builder': (context) => BuilderScreen(),
        'chat': (context) => ChatScreen(),
        'call': (context) => CallScreen(),
        '/artifical': (context) => ArtificalScreen(),
        '/map': (context) => MapScreen(),
        '/estate': (context) => Search(),
        '/total': (context) => TotalelimationScreen(),
        '/all': (context) => AllbuldersScreen(),
        '/setting': (context) => SettingScreen(),
        '/history': (context) => HistoryScreen(),
        '/transication': (context) => TransicatonScreen(),
        '/savedcard': (context) => SavedcardsScreen(),
        '/savedcardtwo': (context) => SvaedcardtwoScreen(),
        '/videocall': (context) => VideocallScreen(),
        '/notification': (context) => NotiffcationScrenn(),
        
        
      },
      initialRoute: 'Splash',
    );
  }
}
