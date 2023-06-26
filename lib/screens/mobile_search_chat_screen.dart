import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:flutter_application_1/info.dart';
import 'package:flutter_application_1/widgets/chat_list.dart';

class SearchChat extends StatelessWidget {
  const SearchChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Padding(
          padding: const EdgeInsets.only(
            top: 0,
          ),
          child: TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.transparent,
              hintText: 'Type a message',
              prefixIcon: const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                child: Icon(
                  Icons.search,
                  size: 18,
                  color: Colors.white,
                ),
              ),
              hintStyle: const TextStyle(
                fontSize: 14,
                color: Colors.white,
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
              contentPadding: const EdgeInsets.all(0),
            ),
          ),
        ),
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
                const ChatList(),
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
}
