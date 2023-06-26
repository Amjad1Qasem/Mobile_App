import 'package:flutter/material.dart';
import '../colors.dart';
import '../info.dart';
import 'mobile_linked_device.dart';
import 'mobile_profile.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        centerTitle: false,
        title: const Text(
          'Setting',
          style: TextStyle(
            fontFamily: 'Kalam',
            fontStyle: FontStyle.normal,
          ),
        ),
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
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Profile(),
                      ),
                    );
                  },
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiKZ7SLLjD482tSUXrOH5JoY9rbLwoZzaiDfAWjkg0S6pGXbRFHLYLdJS-0yu20JcQuMk&usqp=CAU',
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
                      'Hey There! I am using Whatsapp.',
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
                  left: 130,
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const LinkedDevices(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.qr_code,
                    size: 17,
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
          const Padding(
            padding: EdgeInsets.only(
              top: 10,
            ),
            child: Text(
              'All setting in whatsapp',
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
              top: 15,
              right: 140,
            ),
            child: Divider(
              color: dividerColor,
              indent: 140,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              left: 50,
              right: 50,
            ),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: setting.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(5),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  setting[index]['title'].toString(),
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Kalam',
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                                Text(
                                  setting[index]['decouation'].toString(),
                                  style: const TextStyle(
                                    fontFamily: 'Kalam',
                                    fontStyle: FontStyle.normal,
                                    color: Colors.grey,
                                    fontSize: 13,
                                  ),
                                ),
                                const SizedBox(
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
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
