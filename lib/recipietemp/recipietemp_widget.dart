import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class RecipietempWidget extends StatefulWidget {
  const RecipietempWidget({Key key}) : super(key: key);

  @override
  _RecipietempWidgetState createState() => _RecipietempWidgetState();
}

class _RecipietempWidgetState extends State<RecipietempWidget> {
  PageController pageViewController;
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
                    'Recipie names',
                    style: FlutterFlowTheme.title2.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFFFFF1BD),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.95,
                        height: MediaQuery.of(context).size.height * 0.6,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 500,
                          child: Stack(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                                child: PageView(
                                  controller: pageViewController ??=
                                      PageController(initialPage: 0),
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Hello World',
                                          style: FlutterFlowTheme.bodyText1,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Hello World',
                                          style: FlutterFlowTheme.bodyText1,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Hello World',
                                          style: FlutterFlowTheme.bodyText1,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 1),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 10),
                                  child: SmoothPageIndicator(
                                    controller: pageViewController ??=
                                        PageController(initialPage: 0),
                                    count: 3,
                                    axisDirection: Axis.horizontal,
                                    onDotClicked: (i) {
                                      pageViewController.animateToPage(
                                        i,
                                        duration: Duration(milliseconds: 500),
                                        curve: Curves.ease,
                                      );
                                    },
                                    effect: ExpandingDotsEffect(
                                      expansionFactor: 2,
                                      spacing: 8,
                                      radius: 16,
                                      dotWidth: 16,
                                      dotHeight: 16,
                                      dotColor: Color(0xFF9E9E9E),
                                      activeDotColor: Color(0xFF3F51B5),
                                      paintStyle: PaintingStyle.fill,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
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
