import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/all_contacts.dart';
import '../colors.dart';
import 'mobile_search_screen.dart';

class NewGroup extends StatelessWidget {
  const NewGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        centerTitle: false,
        title: const Text(
          'New Group',
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
              bottom: 20,
            ),
            child: Divider(
              color: dividerColor,
              indent: 120,
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
