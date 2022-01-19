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
  TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController(text: 'hello\nello\nbullo');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      height: MediaQuery.of(context).size.height * 0.65,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.tertiaryColor,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: FlutterFlowTheme.tertiaryColor,
          )
        ],
        borderRadius: BorderRadius.circular(0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            'Heading',
            style: FlutterFlowTheme.title2,
          ),
          Text(
            'Ingrdients',
            style: FlutterFlowTheme.title3,
          ),
          TextFormField(
            controller: textController,
            obscureText: false,
            decoration: InputDecoration(
              hintText: '[Some hint text...]',
              hintStyle: FlutterFlowTheme.bodyText1,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0x00000000),
                  width: 1,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  topRight: Radius.circular(4.0),
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0x00000000),
                  width: 1,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  topRight: Radius.circular(4.0),
                ),
              ),
              contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
            ),
            style: FlutterFlowTheme.bodyText1,
            maxLines: 5,
          ),
          Text(
            'Steps',
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
