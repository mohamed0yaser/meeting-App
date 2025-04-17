import 'package:flutter/material.dart';
import 'package:meeting_application/widgets/custom_button.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment:  MainAxisAlignment.center,
        children: [
          const Text( 'Start or join a meeting ...',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),),
          const SizedBox(height: 20,),
          Image.asset('assets/images/onboarding.jpg',),
          const SizedBox(height: 20,),
          CustomButton(
            text: 'Login',
            onPressed: (){},
            )
        ],
      )
    );
  }
}