import 'dart:convert';
import 'package:flutter_application_1/api/client_api.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/utilites/text_styles.dart';
import 'package:flutter_application_1/ui/widgets/screen_background_widget.dart';
 
import 'package:http/http.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   

 Map<String,String> FormValues={"email":"","password":" "};
 bool loading=false;
 InputOnChange(MapKey,Textvalue){
  setState(() {
    FormValues.update(MapKey, (value) =>Textvalue);
  });
 }
       
       FormOnSubmit() async{

        if(FormValues['email']!.length==0){
          ErrorToast('Email Required');
        }
        else if(FormValues['password']!.length==0){
          ErrorToast('Password requed');

        }
        else {

          setState(() {
            loading=true;
            
          });
           loginRequest(FormValues);
          setState(() {
            loading=false;
            
          });
        }
       }

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
                     onChanged: (Textvalue) {
                      InputOnChange("email", Textvalue);
                       
                     },
                      decoration: CustomInputDecoration('Email'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      onChanged: (Textvalue) {
                      InputOnChange("password", Textvalue);
                       
                     },
                      decoration: CustomInputDecoration('Password'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                           FormOnSubmit();
                        },
                        style: AppButtonStyle(),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.send, size: 20),
                            SizedBox(width: 8), // Spacing between icon and text
                            Text(
                              "Login",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Have Account? ',
                            style: Head6Text(Colors.black),
                          ),
                          GestureDetector(
                            onTap: () {
                              print("Sign in tapped");
                              // Add navigation logic here
                            },
                            child: Text(
                              'Sign in',
                              style: Head6Text(Colors.green),
                            ),
                          ),
                        ],
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
