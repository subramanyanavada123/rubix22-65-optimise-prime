import '../components/recipiesearch_component_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class RecipiesearchWidget extends StatefulWidget {
  const RecipiesearchWidget({Key key}) : super(key: key);

  @override
  _RecipiesearchWidgetState createState() => _RecipiesearchWidgetState();
}

class _RecipiesearchWidgetState extends State<RecipiesearchWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  var items;
  bool present = false;

  void getItems() async {
    try {
      // String url = "http://192.168.0.192:5000/" + "api/getitem";
      String url = "https://api.spoonacular.com/recipes/complexSearch?query="+ text + "&apiKey=8afaaf5604f4495fa9e9b52c1fb6a8ef";
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        // print(response.body);
        var data = json.decode(response.body);
        // print(data);
        setState(() {
          items = data;
          present = true;
        });
      }
    } catch (e) {
      print(e);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('No Interent Found, try again'),
            backgroundColor: Colors.redAccent),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    RecipiesearchComponentWidget(),
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
