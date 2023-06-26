import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';

class ChatAppBar extends StatelessWidget {
  const ChatAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.75,
      padding: const EdgeInsets.all(10.0),
      color: webAppBarColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Rivaan Ranawat',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Kalam',
              fontStyle: FontStyle.normal,
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  bottom: 5,
                ),
              ),
              IconButton(
                onPressed: () {
                  /*Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const (),
                    ),
                  );*/
                },
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 18,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
