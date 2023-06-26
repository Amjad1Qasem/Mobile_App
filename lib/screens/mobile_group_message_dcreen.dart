import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:flutter_application_1/widgets/all_contacts.dart';
import 'mobile_search_screen.dart';

class GroupMessage extends StatelessWidget {
  const GroupMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        centerTitle: false,
        title: const Text(
          'New Group Message',
          style: TextStyle(
            fontFamily: 'Kalam',
            fontStyle: FontStyle.normal,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 10,
            ),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Search(),
                  ),
                );
              },
              icon: const Icon(
                Icons.search,
                color: Colors.white,
                size: 22,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: const [
          Padding(
            padding: EdgeInsets.only(
              top: 15,
            ),
            child: Text(
              'Add participants',
              style: TextStyle(
                fontFamily: 'Kalam',
                fontSize: 18,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w200,
                color: appBarColor,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 5,
              left: 20,
              right: 140,
            ),
            child: Divider(
              color: dividerColor,
              indent: 120,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 50,
              left: 50,
            ),
            child: Text(
              'Only contacts who have saved your number in the contact',
              style: TextStyle(
                fontFamily: 'Kalam',
                fontSize: 14,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 70,
              left: 70,
            ),
            child: Text(
              'history will receive group messages.',
              style: TextStyle(
                fontFamily: 'Kalam',
                fontSize: 14,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 5,
              left: 20,
              right: 50,
              bottom: 5,
            ),
            child: Divider(
              color: dividerColor,
              indent: 20,
            ),
          ),
          Expanded(
            child: Contacts(),
          ),
        ],
      ),
    );
  }
}
