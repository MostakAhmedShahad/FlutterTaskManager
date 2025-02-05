import 'dart:convert';

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
  final Client httpClient = Client();

  final TextEditingController EmailController = TextEditingController();
  final TextEditingController PasswordController = TextEditingController();

  Future<void> loginRequestToAPI() async {
    Uri uri = Uri.parse('https://task.teamrabbil.com/api/v1/login');
    var response = await httpClient.post(uri,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "email": EmailController.text,
          "password": PasswordController.text,
        }));
    print(response.body);
    print("Status Code: ${response.statusCode}"); // Debugging
    print("Response Body: ${response.body}"); //
    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Post created successfully!"),
        ),
      );
      //setState(() {});
      // SuccessToast('Request Success!');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Failed to create post!"),
        ),
      );
      //ErrorToast('Request Success!');
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
                      controller: EmailController,
                      decoration: CustomInputDecoration('Email'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: PasswordController,
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
                          if (EmailController.text.isEmpty ||
                              PasswordController.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Please fill in all fields!"),
                              ),
                            );
                          } else {
                            loginRequestToAPI();
                          }
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
