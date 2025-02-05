import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/screens/on_boading/email_verification_screen.dart';
import 'package:flutter_application_1/ui/screens/on_boading/login_screen.dart';
import 'package:flutter_application_1/ui/screens/on_boading/pin_verification_screen.dart';
import 'package:flutter_application_1/ui/screens/on_boading/registration_screen.dart';
import 'package:flutter_application_1/ui/screens/on_boading/set_password_screen.dart';
import 'package:flutter_application_1/ui/screens/on_boading/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void myy(){
    print('hi');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Task Manager",
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
      '/':(context)=> SplashScreen(),
      '/login':(context)=> LoginScreen(),
      '/registration':(context)=> RegistrationScreen(),
      '/emailVerification':(context)=> EmailVerificationScreen(),
      '/pinVerification':(context)=> PinVerificationScreen(),
      '/setPassword':(context)=> SetPasswordScreen(),
       

      }


 
    );
  }
}