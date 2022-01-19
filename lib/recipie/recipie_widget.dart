import '../components/recipie_component_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipieWidget extends StatefulWidget {
  const RecipieWidget({Key key}) : super(key: key);

  @override
  _RecipieWidgetState createState() => _RecipieWidgetState();
}

class _RecipieWidgetState extends State<RecipieWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            color: Color(0xFFEEEEEE),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/bg2.png',
              ).image,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 50, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.ac_unit,
                                color: Colors.black,
                                size: 24,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(25, 0, 25, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Maa Ki Maaya',
                                style: FlutterFlowTheme.title2.override(
                                  fontFamily: 'Roboto Slab',
                                  color: Color(0xFF171515),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.menu_open_sharp,
                                color: Colors.black,
                                size: 24,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Recipie name',
                    style: FlutterFlowTheme.title2.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFFFFF1BD),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      RecipieComponentWidget(),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 50, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.chevron_left,
                                color: FlutterFlowTheme.tertiaryColor,
                                size: 40,
                              ),
                              Text(
                                'Back',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.tertiaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(50, 0, 50, 0),
                              child: Icon(
                                Icons.support_agent_outlined,
                                color: FlutterFlowTheme.tertiaryColor,
                                size: 35,
                              ),
                            ),
                            Text(
                              'Support',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.tertiaryColor,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
                              child: Icon(
                                Icons.navigate_next,
                                color: FlutterFlowTheme.tertiaryColor,
                                size: 40,
                              ),
                            ),
                            Text(
                              'Next',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.tertiaryColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
