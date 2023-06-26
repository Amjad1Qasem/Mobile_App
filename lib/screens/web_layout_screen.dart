import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:flutter_application_1/widgets/chat_list.dart';
import 'package:flutter_application_1/widgets/contacts_list.dart';
import 'package:flutter_application_1/widgets/web_chat_appbar.dart';
import 'package:flutter_application_1/widgets/web_profile_bar.dart';
import 'package:flutter_application_1/widgets/web_search_bar.dart';

class WebLayoutScreen extends StatelessWidget {
  const WebLayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  WebProfilwBar(),
                  WebSearchBar(),
                  ContactsList(),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: dividerColor,
                ),
              ),
              image: DecorationImage(
                image: NetworkImage(
                  'https://media.istockphoto.com/vectors/young-man-anime-style-character-vector-id1188980757?k=20&m=1188980757&s=612x612&w=0&h=mchP5EsIbmDRCWs3k8N2xtDfjaMTF2DU3ahc_HPsSMw=',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const ChatAppBar(),
                const SizedBox(
                  height: 20,
                ),
                const Expanded(
                  child: ChatList(),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide.none,
                    ),
                    color: mobileChatBoxColor,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        padding: const EdgeInsets.only(
                          bottom: 1,
                        ),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.emoji_emotions_outlined,
                          color: Colors.grey,
                          size: 21,
                        ),
                      ),
                      IconButton(
                        padding: const EdgeInsets.only(
                          bottom: 1,
                        ),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.attach_file,
                          color: Colors.grey,
                          size: 21,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 15,
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color.fromARGB(20, 45, 50, 1),
                              hintText: 'Type a message',
                              hintStyle: const TextStyle(
                                fontFamily: 'Kalam',
                                fontStyle: FontStyle.normal,
                                fontSize: 13,
                                color: Colors.white70,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              contentPadding: const EdgeInsets.only(
                                left: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        padding: const EdgeInsets.only(
                          bottom: 2,
                          right: 2.5,
                        ),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.mic,
                          color: Colors.grey,
                          size: 22,
                        ),
                      ),
                    ],
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
