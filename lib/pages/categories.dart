import 'package:flutter/material.dart';
import 'package:flutter_application_1/compount/mydrawer.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            appBar: AppBar(
                title: Text("الاقسام"),
                backgroundColor: Colors.blue,
                centerTitle: true,
                elevation: 6),
            drawer: Mydrawer(),
            body: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                children: <Widget>[
                  Container(
                    child: Card(
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.asset("", fit: BoxFit.cover),
                          ),
                          Container(
                              child: Text(
                            "samsung",
                            style: TextStyle(fontSize: 20),
                          ))
                        ],
                      ),
                    ),
                    // onTap: () {
                    //   Navigator.of(context).pushNamede('samsung');
                    // },
                  ),
                  Container(
                      child: Card(
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset("", fit: BoxFit.cover),
                        ),
                        Container(
                            child: Text(
                          "samsung",
                          style: TextStyle(fontSize: 20),
                        ))
                      ],
                    ),
                  )),
                  Container(
                      child: Card(
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset("", fit: BoxFit.cover),
                        ),
                        Container(
                            child: Text(
                          "samsung",
                          style: TextStyle(fontSize: 20),
                        ))
                      ],
                    ),
                  )),
                  Container(
                      child: Card(
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset("", fit: BoxFit.cover),
                        ),
                        Container(
                            child: Text(
                          "samsung",
                          style: TextStyle(fontSize: 20),
                        ))
                      ],
                    ),
                  )),
                  Container(
                      child: Card(
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset("", fit: BoxFit.cover),
                        ),
                        Container(
                            child: Text(
                          "samsung",
                          style: TextStyle(fontSize: 20),
                        ))
                      ],
                    ),
                  )),
                ])));
  }
}
