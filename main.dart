import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Maseno Revision Hub",
      theme: ThemeData(
  brightness: Brightness.dark,
  primaryColor: Color(0xFF06B6D4),
  scaffoldBackgroundColor: Color(0xFF070A12),
  fontFamily: 'Poppins',
),
  }
}
