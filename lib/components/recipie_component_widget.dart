import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipieComponentWidget extends StatefulWidget {
  const RecipieComponentWidget({Key key}) : super(key: key);

  @override
  _RecipieComponentWidgetState createState() => _RecipieComponentWidgetState();
}

class _RecipieComponentWidgetState extends State<RecipieComponentWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      height: MediaQuery.of(context).size.height * 0.55,
      decoration: BoxDecoration(
        color: Color(0xFFCDDEFF),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: FlutterFlowTheme.tertiaryColor,
          )
        ],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            'Hello World',
            style: FlutterFlowTheme.bodyText1,
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 60,
                icon: Icon(
                  Icons.mic,
                  color: Colors.black,
                  size: 30,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
