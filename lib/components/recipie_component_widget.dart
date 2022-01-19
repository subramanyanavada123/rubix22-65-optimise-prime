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
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.tertiaryColor,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Color(0xFFAEE1E1),
          )
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "Step " + values['number'].toString(),
            style: FlutterFlowTheme.title2,
          ),
          Text(
            'Ingredients',
            style: FlutterFlowTheme.title3,
          ),
          if(values.containsKey('ingredients'))
              new Flexible(
                child: ListView.builder(
                // Let the ListView know how many items it needs to build.
                itemCount: values['ingredients'].length,
                // Provide a builder function. This is where the magic happens.
                // Convert each item into a widget based on the type of item it is.
                itemBuilder: (context, index) {
                  final item = values['ingredients'][index];

                  return ListTile(
                    leading: Icon(Icons.circle),
                    title: Text(item['name']),
                  );
                },
            ),
              ),
          Text(
            values['step'],
            style: FlutterFlowTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
