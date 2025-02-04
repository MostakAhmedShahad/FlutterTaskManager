import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/utilites/text_styles.dart';
import 'package:flutter_application_1/ui/widgets/screen_background_widget.dart';

class SetPasswordScreen extends StatefulWidget {
  const SetPasswordScreen({super.key});

  @override
  State<SetPasswordScreen> createState() => _SetPasswordScreenState();
}

class _SetPasswordScreenState extends State<SetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackgroundWidget(
        widget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Set Password',
              style: ScreenTittleTextStyle,
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: [
                    Text(
                      'Minimun lenth password 8 character with latter and number combination',
                      style: Head6Text(Colors.black),
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
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: AppButtonStyle(),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            //Icon(Icons.send, size: 20),
                            SizedBox(width: 8), // Spacing between icon and text
                            Text(
                              "Confirm",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
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
          ],
        ),
      ),
    );
  }
}
