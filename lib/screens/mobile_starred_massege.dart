import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';

class StarredMessages extends StatelessWidget {
  const StarredMessages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        centerTitle: false,
        title: const Text(
          'Starred messages',
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
              Icons.star_rate_rounded,
              color: appBarColor,
              size: 130,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Click and hold on any chat to star it,',
            style: TextStyle(
              fontFamily: 'Kalam',
              fontStyle: FontStyle.normal,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'so you can easily find it later.',
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
