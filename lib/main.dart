import 'package:BookHook/res/colors/_colors.dart';
import 'package:BookHook/router/routeGenerator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IPL ADDA',
      theme: ThemeData(
          accentColor: Colors.black,
          backgroundColor: AppColors.background,
          brightness: Brightness.light,
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: AppColors.textPrimary,
          )),
      onGenerateRoute: RouteGenerator.generateRoute,
      home: Scaffold(
        drawer: Drawer(
          child: SafeArea(
            child: Text("Hey"),
          ),
        ),
        body: Container(
          child: Center(
            child: Text("Home"),
          ),
        ),
      ),
    );
  }
}
