import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Lists1Widget extends StatefulWidget {
  const Lists1Widget({Key key}) : super(key: key);

  @override
  _Lists1WidgetState createState() => _Lists1WidgetState();
}

class _Lists1WidgetState extends State<Lists1Widget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.7,
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
              ),
              child: DefaultTabController(
                length: 3,
                initialIndex: 0,
                child: Column(
                  children: [
                    TabBar(
                      labelColor: Color(0xFF00063D),
                      unselectedLabelColor: FlutterFlowTheme.primaryColor,
                      labelStyle: FlutterFlowTheme.bodyText1,
                      indicatorColor: FlutterFlowTheme.secondaryColor,
                      tabs: [
                        Tab(
                          text: 'Today',
                        ),
                        Tab(
                          text: 'week',
                        ),
                        Tab(
                          text: 'Stable',
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Container(),
                          Text(
                            'Tab View 2',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 32,
                            ),
                          ),
                          Text(
                            'Tab View 3',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 32,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
