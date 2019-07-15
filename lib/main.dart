import 'package:flutter_web/material.dart';
import 'package:disbot/pages/login_page.dart';

void main() => runApp(DisbotApp());

class DisbotApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.yellow
      ),
      home: LoginPage(),
    );
  }
}