import '../components/food1_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'empty.dart';

class Lists1Widget extends StatefulWidget {
  final thisWeek, nextWeek, later;
  const Lists1Widget(
      {Key key,
      @required this.thisWeek,
      @required this.nextWeek,
      @required this.later})
      : super(key: key);

  @override
  _Lists1WidgetState createState() => _Lists1WidgetState();
}

class _Lists1WidgetState extends State<Lists1Widget> {
  var thisWeek, nextWeek, later;

  void initState() {
    super.initState();
    thisWeek = widget.thisWeek;
    nextWeek = widget.nextWeek;
    later = widget.later;
    print(later.length);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.height * 1,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.tertiaryColor,
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
                            text: 'This Week',
                          ),
                          Tab(
                            text: 'Next Week',
                          ),
                          Tab(
                            text: 'Later',
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    if (thisWeek != null)
                                      ...(thisWeek).map((item) {
                                        try {
                                          var date = DateTime.parse(
                                              item['expiry_date']);
                                          var formatter =
                                              DateFormat('dd-MM-yyyy');
                                          String formatted =
                                              formatter.format(date);
                                          item['expiry_date'] = formatted;
                                        } catch (e) {
                                          print(e);
                                        }
                                        return Food1Widget(item);
                                      })
                                    else
                                      ConfirmWidget()
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      if (nextWeek != null)
                                        ...(nextWeek).map((item) {
                                          try {
                                            var date = DateTime.parse(
                                                item['expiry_date']);
                                            var formatter =
                                                DateFormat('dd-MM-yyyy');
                                            String formatted =
                                                formatter.format(date);
                                            item['expiry_date'] = formatted;
                                          } catch (e) {
                                            print(e);
                                          }
                                          return Food1Widget(item);
                                        })
                                      else
                                        ConfirmWidget()
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (later != null)
                                      ...(later).map((item) {
                                        try {
                                          var date = DateTime.parse(
                                              item['expiry_date']);
                                          var formatter =
                                              DateFormat('dd-MM-yyyy');
                                          String formatted =
                                              formatter.format(date);
                                          item['expiry_date'] = formatted;
                                        } catch (e) {
                                          print(e);
                                        }

                                        return Food1Widget(item);
                                      })
                                    else
                                      ConfirmWidget()
                                  ],
                                ),
                              ],
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
      ),
    );
  }
}
