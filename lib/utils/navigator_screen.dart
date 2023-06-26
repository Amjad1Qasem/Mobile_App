import 'package:flutter/material.dart';

class Navigator_Screen {
  static void leaveScreen(BuildContext context) {
    Navigator.pushNamed(context, '/second');
  }
}
