import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalenderWidget extends StatelessWidget {

  var values;

  CalenderWidget(this.values);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 12,
            color: Color(0x34000000),
            offset: Offset(-2, 5),
          )
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(8, 8, 12, 8),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 4,
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.primaryColor,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      values['item_name'],
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Added On',
                      style: FlutterFlowTheme.bodyText1,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                      child: Text(
                        values['created_date'].toString(),
                        style: FlutterFlowTheme.title1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Order Summary',
                    style: FlutterFlowTheme.bodyText1,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                          child: Text(
                            '(' + values['quantity'].toString() + 'items)',
                            style: FlutterFlowTheme.bodyText1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(4, 4, 0, 0),
                          child: Text(
                            '\₹' + values['total_price'].toString(),
                            style: FlutterFlowTheme.title3.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF1D2429),
                            ),
                          ),
                        ),
                      ],
                    ),
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
