import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipieComponentWidget extends StatelessWidget {

  TextEditingController textController = TextEditingController();

  var values;
  var id;
  RecipieComponentWidget(this.values);

  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      height: MediaQuery.of(context).size.height * 0.65,
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
            "Step " + values['number'].toString(),
            style: FlutterFlowTheme.title2,
          ),
          Text(
            'Ingrdients',
            style: FlutterFlowTheme.title3,
          ),
          // if(values.containsKey('ingredients'))
          //     ListView.builder(
          //     // Let the ListView know how many items it needs to build.
          //     itemCount: values['ingredients'].length,
          //     // Provide a builder function. This is where the magic happens.
          //     // Convert each item into a widget based on the type of item it is.
          //     itemBuilder: (context, index) {
          //       final item = values['ingredients'][index];

          //       return ListTile(
          //         title: item.buildTitle(context),
          //         subtitle: item.buildSubtitle(context),
          //       );
          //     },
          //   ),
          Text(
            values['step'],
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
