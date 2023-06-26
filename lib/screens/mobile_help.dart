import 'package:flutter/material.dart';
import '../colors.dart';

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        centerTitle: false,
        title: const Text(
          'Help',
          style: TextStyle(
            fontFamily: 'Kalam',
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
      body: Column(
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.only(
                top: 30,
              ),
              child: Text(
                'Contact Help',
                style: TextStyle(
                  fontFamily: 'Kalam',
                  fontSize: 18,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w200,
                  color: appBarColor,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 5,
              left: 20,
              right: 175,
            ),
            child: Divider(
              color: dividerColor,
              indent: 160,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 15,
              left: 25,
              right: 20,
            ),
            child: Text(
              'If you do not find some of your friend is numbers in your contacts list, we recommend that you follow these steps:',
              style: TextStyle(
                fontFamily: 'Kalam',
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              left: 30,
            ),
            child: Row(
              children: const [
                Icon(
                  Icons.task_alt_rounded,
                  size: 12,
                  color: appBarColor,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'Make sure that your friend is number is registered in your contact list.',
                  style: TextStyle(
                    fontFamily: 'Kalam',
                    fontStyle: FontStyle.normal,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 30,
            ),
            child: Row(
              children: const [
                Icon(
                  Icons.task_alt_rounded,
                  size: 12,
                  color: appBarColor,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'Make sure that your friend is number is using Whatsapp.',
                  style: TextStyle(
                    fontFamily: 'Kalam',
                    fontStyle: FontStyle.normal,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
