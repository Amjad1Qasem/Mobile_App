import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:flutter_application_1/widgets/contacts_list.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: const Text(
          'Search in Whatsapp',
          style: TextStyle(
            fontFamily: 'Kalam',
            fontStyle: FontStyle.normal,
          ),
        ),
        centerTitle: false,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 30,
              left: 30,
            ),
            child: Container(
              alignment: Alignment.center,
              color: Colors.transparent,
              child: TextFormField(
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    child: Icon(
                      Icons.search,
                      size: 18,
                    ),
                  ),
                  hintStyle: TextStyle(
                    fontSize: 13,
                    fontFamily: 'Kalam',
                    fontStyle: FontStyle.normal,
                  ),
                  hintText: 'Search or start new chat',
                  contentPadding: EdgeInsets.all(12),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'The recently searched',
            style: TextStyle(
              fontFamily: 'Kalam',
              fontSize: 18,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w200,
              color: appBarColor,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 5,
              right: 140,
            ),
            child: Divider(
              color: dividerColor,
              indent: 150,
            ),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                top: 0,
              ),
              child: ContactsList(),
            ),
          ),
        ],
      ),
    );
  }
}
