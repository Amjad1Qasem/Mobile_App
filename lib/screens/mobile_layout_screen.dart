import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:flutter_application_1/widgets/contacts_list.dart';
import 'package:flutter_application_1/widgets/status.dart';
import 'mobile_contacts_screen.dart';
import 'mobile_group_message_dcreen.dart';
import 'mobile_linked_device.dart';
import 'mobile_new_group.dart';
import 'mobile_search_screen.dart';
import 'package:flutter_application_1/widgets/call_contacts.dart';
import 'mobile_setting.dart';
import 'mobile_starred_massege.dart';

class MobileLayoutScreen extends StatelessWidget {
  const MobileLayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: appBarColor,
          centerTitle: false,
          title: const Text(
            'Whatsapp',
            style: TextStyle(
              fontFamily: 'Kalam',
              fontStyle: FontStyle.normal,
              fontSize: 24,
              color: Colors.white,
              letterSpacing: 0.5,
            ),
          ),
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
                color: Colors.white,
                size: 22,
              ),
            ),
            PopupMenuButton<int>(
              itemBuilder: (context) => [
                const PopupMenuItem<int>(
                  value: 0,
                  child: Text(
                    'New group',
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
                    'New group messages',
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
                    'Linked devices',
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
                    'Starred Messages',
                    style: TextStyle(
                      fontFamily: 'Kalam',
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                    ),
                  ),
                ),
                const PopupMenuItem<int>(
                  value: 4,
                  child: Text(
                    'Settings',
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
                color: Colors.white,
                size: 22,
              ),
            ),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.lightBlueAccent,
            indicatorWeight: 4,
            labelColor: Colors.blueGrey,
            unselectedLabelColor: Colors.white,
            labelStyle: TextStyle(
              fontFamily: 'Kalam',
              fontStyle: FontStyle.normal,
            ),
            tabs: [
              Tab(
                text: 'Chats',
              ),
              Tab(
                text: 'Status',
              ),
              Tab(
                text: 'Calls',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ContactsList(),
            Status(),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
              ),
              child: CallContacts(),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const AllContacts(),
              ),
            );
          },
          backgroundColor: appBarColor,
          child: const Icon(
            Icons.comment,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  SelectedTtem(BuildContext context, Object? item) {
    switch (item) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const NewGroup(),
          ),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const GroupMessage(),
          ),
        );
        break;
      case 2:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const LinkedDevices(),
          ),
        );
        break;
      case 3:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const StarredMessages(),
          ),
        );
        break;
      case 4:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const Setting(),
          ),
        );
        break;
    }
  }
}
