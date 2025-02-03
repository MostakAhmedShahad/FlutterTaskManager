import 'package:flutter/material.dart';
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
     
    return  Scaffold  (
       

      body: Stack(

        children: [
          SvgPicture.asset('assets/images/background.svg',
          fit: BoxFit.cover,
          height: height*1, width: width*1,),

          Center(child: SvgPicture.asset('assets/images/logo.svg')),

        ],

      ),
    );
  }
}