import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/utilites/text_styles.dart';
import 'package:flutter_application_1/ui/widgets/screen_background_widget.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                      decoration: CustomInputDecoration('First Name'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: CustomInputDecoration('Last Name'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: CustomInputDecoration('Mobile'),
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
                    TextFormField(
                      decoration: CustomInputDecoration('Confirm Password'),
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
                           // Icon(Icons.send, size: 20),
                            SizedBox(width: 8), // Spacing between icon and text
                            Text("Submit",style:TextStyle(color: Colors.black),),
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