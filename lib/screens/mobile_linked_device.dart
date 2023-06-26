import 'package:flutter/material.dart';
import '../colors.dart';

class LinkedDevices extends StatelessWidget {
  const LinkedDevices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        centerTitle: false,
        title: const Text(
          'Linked devives',
          style: TextStyle(
            fontFamily: 'Kalam',
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 120,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.only(
                    top: 25,
                    left: 100,
                  ),
                  child: Text(
                    'Use Chatti on other devices',
                    style: TextStyle(
                      fontFamily: 'Kalam',
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Icon(
                  Icons.connect_without_contact_rounded,
                  color: appBarColor,
                  size: 130,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          const Text(
            'Use Whatsapp on web, desktop or other devices',
            style: TextStyle(
              fontFamily: 'Kalam',
              fontStyle: FontStyle.normal,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'without keeping your phone oninle.',
            style: TextStyle(
              fontFamily: 'Kalam',
              fontStyle: FontStyle.normal,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Link a devices',
              style: TextStyle(
                fontFamily: 'Kalam',
                fontStyle: FontStyle.normal,
                color: appBarColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
