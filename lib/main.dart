import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:meeting_application/firebase_options.dart';
import 'package:meeting_application/resources/auth_methods.dart';
import 'package:meeting_application/screens/home_page.dart';
import 'package:meeting_application/screens/login_screen.dart';
import 'package:meeting_application/utils/colors.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'meeting application',
      theme: ThemeData.dark(useMaterial3: true).copyWith(
        scaffoldBackgroundColor: backgroundColor
        ),
        routes: {
          '/login': (context) => const LogInPage(),
          '/home': (context) => const HomePage(),
        },
      home:StreamBuilder(
        stream: AuthMethods().user, 
        builder: (context , snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if(snapshot.connectionState == ConnectionState.active){
            if(snapshot.hasData){
              return const HomePage();
            }else{
              return const LogInPage();
            }
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        ),);

  }
}
