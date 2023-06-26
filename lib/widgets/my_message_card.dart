import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/colors.dart';

class MyMessageCard extends StatelessWidget {
  final String message;
  final String date;
  const MyMessageCard({Key? key, required this.message, required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints:
            BoxConstraints(maxHeight: MediaQuery.of(context).size.width - 45),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          color: messageColor.withOpacity(0.6),
          margin: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 5,
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 30,
                  top: 5,
                  bottom: 20,
                ),
                child: Text(
                  message,
                  style: const TextStyle(
                    fontFamily: 'Kalam',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w100,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                bottom: 4,
                right: 10,
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 1,
                      ),
                    ),
                    Text(
                      date,
                      style: const TextStyle(
                        fontFamily: 'Kalam',
                        fontStyle: FontStyle.normal,
                        fontSize: 9,
                        color: Colors.white70,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Icon(
                      Icons.done_all,
                      size: 15,
                      color: Colors.blueGrey,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
