import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:flutter_application_1/screens/mobile_not_found.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                      radius: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 48,
                        top: 35,
                      ),
                      child: Icon(
                        Icons.add_circle,
                        color: appBarColor,
                      ),
                    ),
                  ],
                ),
                borderRadius: BorderRadius.circular(200),
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
                    'My status',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Kalam',
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  Text(
                    'Click here to add a status.',
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
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 10,
            right: 60,
          ),
          child: Divider(
            color: dividerColor,
            indent: 80,
          ),
        ),
      ],
    );
  }
}
