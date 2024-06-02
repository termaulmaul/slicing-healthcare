import 'package:flutter/material.dart';
import 'onboarding_page.dart';
import 'routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Checkup App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
        fontFamily: 'Montserrat',
      ),
      home: OnBoardingPage(),
      routes: Routes.routes,
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}
