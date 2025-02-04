import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/utilites/text_styles.dart';
import 'package:flutter_application_1/ui/widgets/screen_background_widget.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ScreenBackgroundWidget(
        widget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ' Your Email Address',
              style: ScreenTittleTextStyle,
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: [
                    Text(
                      'A six digit verigication PIN will send to your email address',
                      style: Head6Text(Colors.black),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: CustomInputDecoration('Email Address'),
                    ),
                    SizedBox(
                      height: 10,
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
                            //Icon(Icons.send, size: 20),
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