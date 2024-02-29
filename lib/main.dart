import 'package:flutter/material.dart';
import 'package:tsedey_bank/screens/dashboard_screen/main_dash.dart';
import 'package:tsedey_bank/screens/onbording_screen/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home:  MainDash(),
    );
  }
}
