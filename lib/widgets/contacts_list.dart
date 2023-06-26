import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:flutter_application_1/info.dart';
import 'package:flutter_application_1/screens/mobile_chat_screen.dart';
import 'package:flutter_application_1/screens/mobile_not_found.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10.0,
      ),
      child: ListView.builder(
        shrinkWrap: true,
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
                        info[index]['message'].toString(),
                        style: const TextStyle(
                          fontSize: 14,
                          fontFamily: 'Kalam',
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    leading: GestureDetector(
                      onTap: () {
                        showDialogFunc(
                          context,
                          info[index]['profilePic'].toString(),
                        );
                      },
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          info[index]['profilePic'].toString(),
                        ),
                        radius: 30,
                      ),
                    ),
                    trailing: Text(
                      info[index]['time'].toString(),
                      style: const TextStyle(
                        fontFamily: 'Kalam',
                        fontStyle: FontStyle.normal,
                        color: Colors.grey,
                        fontSize: 13,
                      ),
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
      ),
    );
  }
}

showDialogFunc(context, img) {
  return showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white.withOpacity(.9),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 1),
                  blurRadius: 5,
                  color: Colors.black.withOpacity(0.3),
                ),
              ],
            ),
            padding: EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width * 0.5,
            height: 290,
            child: Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    img,
                    width: 250,
                    height: 220,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.info_outline,
                        color: Colors.blueGrey,
                        size: 18,
                      ),
                    ),
                    const SizedBox(
                      width: 17,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const NotFound(),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.video_call,
                        color: Colors.blueGrey,
                        size: 18,
                      ),
                    ),
                    const SizedBox(
                      width: 17,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const NotFound(),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.call,
                        color: Colors.blueGrey,
                        size: 18,
                      ),
                    ),
                    const SizedBox(
                      width: 17,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const MobileChatScreen(),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.text_snippet,
                        color: Colors.blueGrey,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
