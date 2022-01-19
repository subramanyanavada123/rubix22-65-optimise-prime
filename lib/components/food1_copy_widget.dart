import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Food1CopyWidget extends StatefulWidget {
  const Food1CopyWidget({Key key}) : super(key: key);

  @override
  _Food1CopyWidgetState createState() => _Food1CopyWidgetState();
}

class _Food1CopyWidgetState extends State<Food1CopyWidget> {
  TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.95,
        height: 100,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.tertiaryColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              color: Color(0xFF00063D),
            )
          ],
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Color(0xFF0E6CAD),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Recipie',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF244F02),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.tertiaryColor,
                        ),
                        child: TextFormField(
                          controller: textController,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Bread,milk...',
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
                          ),
                          style: FlutterFlowTheme.bodyText1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(40, 5, 0, 0),
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Color(0x00EEEEEE),
                            border: Border.all(
                              color: Color(0xFF307F07),
                              width: 3,
                            ),
                          ),
                          child: Icon(
                            Icons.stop_circle,
                            color: Color(0xFF307F07),
                            size: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
