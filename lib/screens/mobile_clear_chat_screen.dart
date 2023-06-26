import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:flutter_application_1/info.dart';
import 'mobile_not_found.dart';
import 'mobile_search_chat_screen.dart';
import 'mobile_setting.dart';

class ClearChat extends StatelessWidget {
  const ClearChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          info[0]['name'].toString(),
          style: const TextStyle(
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
                  builder: (context) => const NotFound(),
                ),
              );
            },
            icon: const Icon(
              Icons.video_call,
            ),
            iconSize: 22,
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
            ),
            iconSize: 22,
          ),
          PopupMenuButton<int>(
            itemBuilder: (context) => [
              const PopupMenuItem<int>(
                value: 0,
                child: Text(
                  'View contact',
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
                  'Media, links and documents',
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
                  'Search',
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
                  'Mute notifications',
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
                  'Self-disappearing messages',
                  style: TextStyle(
                    fontFamily: 'Kalam',
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                  ),
                ),
              ),
              const PopupMenuItem<int>(
                value: 5,
                child: Text(
                  'Block contact',
                  style: TextStyle(
                    fontFamily: 'Kalam',
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                  ),
                ),
              ),
              const PopupMenuItem<int>(
                value: 6,
                child: Text(
                  'Clear chat content',
                  style: TextStyle(
                    fontFamily: 'Kalam',
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                  ),
                ),
              ),
              const PopupMenuItem<int>(
                value: 7,
                child: Text(
                  'Chat Transfer',
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
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.88,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          info[0]['profilePic'].toString(),
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: mobileChatBoxColor,
              hintText: 'Type a message',
              hintStyle: const TextStyle(
                fontSize: 14,
                color: Colors.blueGrey,
                fontFamily: 'Kalam',
                fontStyle: FontStyle.normal,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              prefix: const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 5.0,
                  vertical: 10.0,
                ),
                child: Icon(
                  Icons.emoji_emotions,
                  color: Colors.grey,
                  size: 20,
                ),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.camera_alt,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.attach_file,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
              contentPadding: const EdgeInsets.all(10),
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
            builder: (context) => const Setting(),
          ),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const Setting(),
          ),
        );
        break;
      case 2:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const SearchChat(),
          ),
        );
        break;
      case 3:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const Setting(),
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
      case 5:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const Setting(),
          ),
        );
        break;
      case 6:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ClearChat(),
          ),
        );
        break;
      case 7:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const Setting(),
          ),
        );
        break;
    }
  }
}
