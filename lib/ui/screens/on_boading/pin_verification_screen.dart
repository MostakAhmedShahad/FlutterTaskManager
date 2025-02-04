import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/utilites/text_styles.dart';
import 'package:flutter_application_1/ui/widgets/screen_background_widget.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinVerificationScreen extends StatefulWidget {
  const PinVerificationScreen({super.key});

  @override
  State<PinVerificationScreen> createState() => _PinVerificationScreenState();
}

class _PinVerificationScreenState extends State<PinVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackgroundWidget(
        widget:Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
          
             
              mainAxisAlignment: MainAxisAlignment.center,
               
              children: [
                Text('PIN verification',style:Head1Text(Colors.black),),
                SizedBox(height: 20,),
            
                Text('A 6 digit verification pin will send your email address',style: Head6Text(Colors.black),),
                SizedBox(height: 10,),
                PinCodeTextField(
                  appContext: context,
                   length: 6,
                   pinTheme: AppOTPstyle(),
                   animationType: AnimationType.fade,
                   animationDuration: Duration(microseconds: 300),
                   enableActiveFill: true,
                   onChanged: (value) {
                     
                   },
                   onCompleted: (value) {
                     
                   },
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
                            Text("Verify",style:Head6Text( Colors.white),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
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
                              style:  Head6Text(Colors.green),
                            ),
                          ),
                        ],
                      ),
                    ),
                 
              ],
            
          
            
          ),
        ),
         
      
      ),
    );
  }
}