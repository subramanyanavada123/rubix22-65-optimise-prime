import '../components/food1_copy_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipiesearchWidget extends StatefulWidget {
  const RecipiesearchWidget({Key key}) : super(key: key);

  @override
  _RecipiesearchWidgetState createState() => _RecipiesearchWidgetState();
}

class _RecipiesearchWidgetState extends State<RecipiesearchWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Food1CopyWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
