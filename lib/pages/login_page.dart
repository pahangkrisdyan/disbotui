import 'dart:js';

import 'package:disbot/constants.dart';
import 'package:flutter_web/material.dart';
import 'package:disbot/functions.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Wrap(
            children: <Widget>[
              LoginBanner(
                width: getRelativeToScreenSize(
                  context, 
                  getScreenWidth(context),
                  getScreenWidth(context)/2,
                  getScreenWidth(context)/2.5
                ),
                height: getScreenHeight(context),
              ),
              LoginForm(
                height: getScreenHeight(context),
                width: getRelativeToScreenSize(
                  context,
                  getScreenWidth(context),
                  getScreenWidth(context)/2,
                  getScreenWidth(context)-(getScreenWidth(context)/2.5),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}

class LoginForm extends StatelessWidget {
  final double width;
  final double height;

  LoginForm({this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(20.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 4,
        child: Center(
          child: Text("Login Form"),
        ),
      ),
    );
  }
}

class LoginBanner extends StatelessWidget {
  final double width;
  final double height;

  LoginBanner({this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: Colors.yellow,
      child: Center(
        child: Text("Disbot"),
      ),
    );
  }
}