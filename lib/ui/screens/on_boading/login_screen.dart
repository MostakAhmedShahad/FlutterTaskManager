import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/utilites/text_styles.dart';
import 'package:flutter_application_1/ui/widgets/screen_background_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackgroundWidget(
        widget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Start With Rabbil',
              style: ScreenTittleTextStyle,
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: CustomInputDecoration('Email'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: CustomInputDecoration('Password'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 
                      double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        
                        onPressed: () {},
                        style:  AppButtonStyle(),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.send, size: 20),
                            SizedBox(width: 8), // Spacing between icon and text
                            Text("Login",style:TextStyle(color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
