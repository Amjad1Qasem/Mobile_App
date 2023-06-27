import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text("bayan@gmail.com"),
            accountName: Text("Bayan Ahmed"),
            currentAccountPicture: CircleAvatar(child: Icon(Icons.person)),
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(''), fit: BoxFit.cover),
            ),
          ),
          ListTile(
            title: Text(
              "الصفحة الرئيسية",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            leading: Icon(
              Icons.home,
              color: Colors.blue,
              size: 25,
            ),
            onTap: () {
              Navigator.of(context).pushNamed('homepage');
            },
          ),
          ListTile(
              title: Text(
                "الاقسام",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              leading: Icon(
                Icons.category,
                color: Colors.blue,
                size: 25,
              ),
              onTap: () {
                Navigator.of(context).pushNamed('categories');
              }),
          ListTile(
              title: Text(
                "حول التطبيق",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              leading: Icon(
                Icons.info,
                color: Colors.blue,
                size: 25,
              ),
              onTap: () {}),
          ListTile(
              title: Text(
                "الاعدادات ",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              leading: Icon(
                Icons.settings,
                color: Colors.blue,
                size: 25,
              ),
              onTap: () {}),
          ListTile(
              title: Text(
                "تسجيل الدخول",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.blue,
                size: 25,
              ),
              onTap: () {
                Navigator.of(context).pushNamed("login");
              }),
        ],
      ),
    );
  }
}
