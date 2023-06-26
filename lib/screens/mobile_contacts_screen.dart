import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:flutter_application_1/widgets/all_contacts.dart';
import 'mobile_help.dart';
import 'mobile_new_group.dart';
import 'mobile_not_found.dart';
import 'mobile_search_screen.dart';

class AllContacts extends StatelessWidget {
  const AllContacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: const Text(
          'Select contacts',
          style: TextStyle(
            fontFamily: 'Kalam',
            fontStyle: FontStyle.normal,
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Search(),
                ),
              );
            },
            icon: const Icon(
              Icons.search,
            ),
            iconSize: 22,
          ),
          PopupMenuButton<int>(
            itemBuilder: (context) => [
              const PopupMenuItem<int>(
                value: 0,
                child: Text(
                  'Invite a friend',
                  style: TextStyle(
                    fontFamily: 'Kalam',
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                  ),
                ),
              ),
              const PopupMenuItem<int>(
                value: 1,
                child: Text(
                  'Contacts',
                  style: TextStyle(
                    fontFamily: 'Kalam',
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                  ),
                ),
              ),
              const PopupMenuItem<int>(
                value: 2,
                child: Text(
                  'Modernization',
                  style: TextStyle(
                    fontFamily: 'Kalam',
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                  ),
                ),
              ),
              const PopupMenuItem<int>(
                value: 3,
                child: Text(
                  'Help',
                  style: TextStyle(
                    fontFamily: 'Kalam',
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
            onSelected: (item) => SelectedTtem(context, item),
            icon: const Icon(
              Icons.more_vert,
            ),
            iconSize: 22,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 50,
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: appBarColor,
                  radius: 25,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const NewGroup(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.people,
                    ),
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 13,
                ),
                const Text(
                  'New Group',
                  style: TextStyle(
                    fontFamily: 'Kalam',
                    fontStyle: FontStyle.normal,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(
                  width: 120,
                ),
                CircleAvatar(
                  backgroundColor: appBarColor,
                  radius: 25,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const NotFound(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.person_add,
                    ),
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 13,
                ),
                const Text(
                  'New Contact',
                  style: TextStyle(
                    fontFamily: 'Kalam',
                    fontStyle: FontStyle.normal,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: 20,
              right: 45,
            ),
            child: Divider(
              color: dividerColor,
              indent: 15,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 1,
            ),
            child: Text(
              'Contact in Whatsapp',
              style: TextStyle(
                fontFamily: 'Kalam',
                fontSize: 18,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w200,
                color: appBarColor,
              ),
            ),
          ),
          const Padding(
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
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                top: 0,
              ),
              child: Contacts(),
            ),
          ),
        ],
      ),
    );
  }

  SelectedTtem(BuildContext context, Object? item) {
    switch (item) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const NotFound(),
          ),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const NotFound(),
          ),
        );
        break;
      case 2:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const AllContacts(),
          ),
        );
        break;
      case 3:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const Help(),
          ),
        );
        break;
    }
  }
}
