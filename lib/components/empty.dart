import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class ConfirmWidget extends StatefulWidget {
  const ConfirmWidget({Key key}) : super(key: key);

  @override
  _ConfirmWidgetState createState() => _ConfirmWidgetState();
}

class _ConfirmWidgetState extends State<ConfirmWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                color: Color(0xFFF5F5F5),
              ),
              child: Lottie.asset(
                'assets/lottie_animations/live box empty.json',
                width: 200,
                height: 250,
                fit: BoxFit.cover,  
                repeat: false,
                animate: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
