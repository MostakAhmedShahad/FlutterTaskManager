import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ScreenBackgroundWidget extends StatelessWidget {
  final Widget widget;
  const ScreenBackgroundWidget({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;

    return Stack(
      children: [
        SvgPicture.asset(
          'assets/images/background.svg',
          fit: BoxFit.cover,
          height: height * 1,
          width: width * 1,
        ),
        widget
      ],
      
    );
  }
}
