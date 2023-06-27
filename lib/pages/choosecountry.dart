import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChooseCountry extends StatefulWidget {
  @override
  _ChooseCountryState createState() => _ChooseCountryState();
}

class _ChooseCountryState extends State<ChooseCountry> {
  savePref(String country) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString("country", country);
    print(preferences.getString("country"));
  }

  getPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var country = preferences.getString("country");
    if (country != null) {
      Navigator.of(context).pushNamed('homepage');
    }
  }

  @override
  void initState() {
    super.initState();
    getPref();
  }

  Widget build(BuildContext context) {
    return Container(
      child: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            appBar: AppBar(
                title: Text("الاقسام"),
                backgroundColor: Colors.blue,
                centerTitle: true,
                elevation: 6),
            body: Container(
              padding: EdgeInsets.all(10),
              child: ListView(
                children: <Widget>[
                  ListTile(
                      title: Text("مصر"),
                      onTap: () {
                        savePref("eg");
                      },
                      trailing: Image.asset(
                        "image/flag/",
                        width: 40,
                        height: 40,
                      )),
                  ListTile(
                      title: Text("السعودية"),
                      onTap: () {
                        savePref("sa");
                      },
                      trailing: Image.asset(
                        "image/flag/",
                        width: 40,
                        height: 40,
                      )),
                  ListTile(
                      title: Text("سوريا"),
                      onTap: () {
                        savePref("sy");
                      },
                      trailing: Image.asset(
                        "image/flag/",
                        width: 40,
                        height: 40,
                      )),
                  ListTile(
                    title: Text(""),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
