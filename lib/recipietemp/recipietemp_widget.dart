import '../components/recipie1_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class RecipietempWidget extends StatefulWidget {
  const RecipietempWidget({Key key}) : super(key: key);

  @override
  _RecipietempWidgetState createState() => _RecipietempWidgetState();
}

class _RecipietempWidgetState extends State<RecipietempWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  var recipes;
  bool present = false;

  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    // String url =
    //     "https://api.spoonacular.com/recipes/324694/analyzedInstructions?apiKey=" + API_KEY;

    String url = "http://192.168.0.192:5000/fetchrecipe";

    final response = await http.get(Uri.parse(url));
    var data = json.decode(response.body);
    print(data);
    setState(() {
      recipes = data;
      present = true;
    });
  }

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
            color: FlutterFlowTheme.tertiaryColor,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.5,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/try1.jpg',
                          ).image,
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            color: Color(0xFFAEE1E1),
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Recipie1Widget(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
