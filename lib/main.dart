import 'package:flutter/material.dart';
import 'package:flutter_portfolio/layouts/home_widget.dart';
import 'package:flutter_portfolio/res/app_themes.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppTheme.primaryColor,
        scaffoldBackgroundColor: AppTheme.primaryColor,
        backgroundColor: AppTheme.primaryColor,
        textTheme: AppTheme.textTheme
            .apply(bodyColor: Colors.white, displayColor: Colors.white),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeWidget(),
    );
  }
}
