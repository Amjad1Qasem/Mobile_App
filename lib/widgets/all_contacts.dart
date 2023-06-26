import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:flutter_application_1/info.dart';
import 'package:flutter_application_1/screens/mobile_chat_screen.dart';

class Contacts extends StatelessWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: info.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MobileChatScreen(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 8.0,
                ),
                child: ListTile(
                  title: Text(
                    info[index]['name'].toString(),
                    style: const TextStyle(
                      fontSize: 18,
                      fontFamily: 'Kalam',
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(
                      top: 6.0,
                    ),
                    child: Text(
                      info[index]['status'].toString(),
                      style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Kalam',
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      info[index]['profilePic'].toString(),
                    ),
                    radius: 30,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                right: 60,
              ),
              child: Divider(
                color: dividerColor,
                indent: 80,
              ),
            ),
          ],
        );
      },
    );
  }
}
