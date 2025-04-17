import 'package:flutter/material.dart';
import 'package:meeting_application/screens/login_screen.dart';
import 'package:meeting_application/utils/colors.dart';

void main() {
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
        },
      home:LogInPage(),
    );
  }
}
