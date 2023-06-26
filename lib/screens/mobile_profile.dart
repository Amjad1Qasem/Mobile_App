import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:flutter_application_1/info.dart';

import 'mobile_not_found.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        centerTitle: false,
        title: const Text(
          'Profile Personly',
          style: TextStyle(
            fontFamily: 'Kalam',
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 25,
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const NotFound(),
                      ),
                    );
                  },
                  child: Stack(
                    children: const [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiKZ7SLLjD482tSUXrOH5JoY9rbLwoZzaiDfAWjkg0S6pGXbRFHLYLdJS-0yu20JcQuMk&usqp=CAU',
                        ),
                        radius: 50,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 85,
                          top: 70,
                        ),
                        child: Icon(
                          Icons.photo_camera_rounded,
                          color: appBarColor,
                        ),
                      ),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(200),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 70,
                  ),
                  child: Text(
                    'Your profile in Whatsapp',
                    style: TextStyle(
                      fontFamily: 'Kalam',
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w200,
                      color: appBarColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Olive Branch',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Kalam',
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  Text(
                    'I am still busy at the moment',
                    style: TextStyle(
                      fontFamily: 'Kalam',
                      fontStyle: FontStyle.normal,
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              const SizedBox(
                width: 150,
              ),
              const Icon(
                Icons.security,
                size: 18,
                color: Colors.black54,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
