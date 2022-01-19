import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipiesearchComponentWidget extends StatefulWidget {
  const RecipiesearchComponentWidget({Key key}) : super(key: key);

  @override
  _RecipiesearchComponentWidgetState createState() =>
      _RecipiesearchComponentWidgetState();
}

class _RecipiesearchComponentWidgetState
    extends State<RecipiesearchComponentWidget> {
  double ratingBarValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.tertiaryColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              color: FlutterFlowTheme.primaryColor,
            )
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 150,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset(
                        'assets/images/try1.jpg',
                      ).image,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'DIsh name',
                      style: FlutterFlowTheme.title2.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.primaryColor,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Type',
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.primaryColor,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    // RatingBar.builder(
                    //   onRatingUpdate: (newValue) =>
                    //       setState(() => ratingBarValue = newValue),
                    //   itemBuilder: (context, index) => Icon(
                    //     Icons.star_rounded,
                    //     color: FlutterFlowTheme.secondaryColor,
                    //   ),
                    //   direction: Axis.horizontal,
                    //   initialRating: ratingBarValue ??= 3,
                    //   unratedColor: Color(0xFF9E9E9E),
                    //   itemCount: 5,
                    //   itemSize: 15,
                    //   glowColor: FlutterFlowTheme.secondaryColor,
                    // ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
