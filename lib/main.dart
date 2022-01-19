import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:makirasoii2/home_page/home_page_widget.dart';
import 'package:makirasoii2/recipie/recipie_widget.dart';
import 'package:makirasoii2/recipietemp/recipietemp_widget.dart';
import 'package:makirasoii2/scan1/scan1_widget.dart';
import 'calender_main/calender_main_widget.dart';
import 'chat/chat_test.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'makirasoii2',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en', '')],
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CalenderMainWidget(),
    );
  }
}
