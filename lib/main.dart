import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:chamait/screens/onboarding_screen.dart';
import 'package:chamait/screens/sign_in_screen.dart';
import 'package:chamait/screens/sign_up_screen.dart';
import 'package:chamait/screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(chamait());
}

class chamait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Table Banking App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => OnboardingScreen(),
        '/signin': (context) => SignInScreen(),
        '/signup': (context) => SignUpScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}