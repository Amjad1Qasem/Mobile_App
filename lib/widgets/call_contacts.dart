import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:flutter_application_1/info.dart';
import 'package:flutter_application_1/screens/mobile_call_screen.dart';

class CallContacts extends StatelessWidget {
  const CallContacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: info[5].length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 0,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Call(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 0,
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
                      top: 0,
                    ),
                    child: Row(
                      children: [
                        Text(
                          info[index]['time'].toString(),
                          style: const TextStyle(
                            fontSize: 12,
                            fontFamily: 'Kalam',
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        const SizedBox(
                          width: 270,
                        ),
                        Text(
                          info[index]['call'].toString(),
                          style: const TextStyle(
                            fontSize: 13,
                            fontFamily: 'Kalam',
                            fontStyle: FontStyle.normal,
                            color: Color.fromRGBO(240, 0, 0, 50),
                            //color: Color.fromRGBO(0, 200, 0, 50),
                          ),
                        ),
                      ],
                    ),
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      info[index]['profilePic'].toString(),
                    ),
                    radius: 30,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 0,
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
    );
  }
}
