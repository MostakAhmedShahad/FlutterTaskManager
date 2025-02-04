import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/widgets/screen_background_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;

    return Scaffold(
      body: ScreenBackgroundWidget(
        widget: Center(
            child: Center(child: SvgPicture.asset('assets/images/logo.svg'))),
      ),
    );
  }
}
