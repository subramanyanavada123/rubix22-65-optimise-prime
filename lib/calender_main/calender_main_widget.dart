import '../components/calender_widget.dart';
import '../components/lists2_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalenderMainWidget extends StatefulWidget {
  const CalenderMainWidget({Key key}) : super(key: key);

  @override
  _CalenderMainWidgetState createState() => _CalenderMainWidgetState();
}

class _CalenderMainWidgetState extends State<CalenderMainWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Lists2Widget(),
                ),
                CalenderWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
