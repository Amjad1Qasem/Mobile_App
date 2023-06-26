import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';

class NotFound extends StatelessWidget {
  const NotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        centerTitle: false,
        title: const Text(
          'Not found',
          style: TextStyle(
            fontFamily: 'Kalam',
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: Icon(
              Icons.ac_unit_rounded,
              color: appBarColor,
              size: 130,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'This page is not working,because it ',
            style: TextStyle(
              fontFamily: 'Kalam',
              fontStyle: FontStyle.normal,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'needs some complex techniques to be enabled.',
            style: TextStyle(
              fontFamily: 'Kalam',
              fontStyle: FontStyle.normal,
            ),
          ),
        ],
      ),
    );
  }
}
