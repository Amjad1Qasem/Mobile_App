import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:flutter_application_1/screens/mobile_chat_screen.dart';
import 'mobile_call_screen.dart';
import 'mobile_not_found.dart';

class DeleteCall extends StatelessWidget {
  const DeleteCall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        centerTitle: false,
        title: const Text(
          'Call information',
          style: TextStyle(
            fontFamily: 'Kalam',
            fontStyle: FontStyle.normal,
          ),
        ),
        actions: [
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
            ),
            iconSize: 22,
          ),
          PopupMenuButton<int>(
            itemBuilder: (context) => [
              const PopupMenuItem<int>(
                value: 0,
                child: Text(
                  'Delete call history',
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
                  'block contact',
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
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 25,
                ),
                child: InkWell(
                  onTap: () {},
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://media.istockphoto.com/vectors/young-man-anime-style-character-vector-id1188980757?k=20&m=1188980757&s=612x612&w=0&h=mchP5EsIbmDRCWs3k8N2xtDfjaMTF2DU3ahc_HPsSMw=',
                    ),
                    radius: 30,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 15,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Olivia Raham',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Kalam',
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Text(
                      'Hey There! I am using WhatsApp.',
                      style: TextStyle(
                        fontFamily: 'Kalam',
                        fontStyle: FontStyle.normal,
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 90,
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const NotFound(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.call,
                    size: 19,
                    color: Colors.black54,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 10,
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const NotFound(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.video_call,
                    size: 19,
                    color: Colors.black54,
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 15,
              right: 60,
            ),
            child: Divider(
              color: dividerColor,
              indent: 80,
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
            builder: (context) => const DeleteCall(),
          ),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const Call(),
          ),
        );
        break;
    }
  }
}
