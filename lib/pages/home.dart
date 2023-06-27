import 'dart:convert';

import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:flutter_application_1/compount/mydrawer.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_application_1/compount/moblist.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  var listsearch = [];
  Future getData() async {
    var country;
    var url = "http//10.0.2.2/mobil/search.php";
    var data = {"cat": "1"};
    var response = await http.get(Uri.parse(url) /*, body:data*/);
    var responsebody = jsonDecode(response.body);
    for (int i = 0; i < responsebody.length; i++) {
      listsearch.add(responsebody[i]['name']);
    }
    print(listsearch);
    return responsebody;
  }

  getPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var country = preferences.getString("country");
    print(country);
  }

  @override
  void initState() {
    getData();
    getPref();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            appBar: AppBar(
              title: Text("Mobil"),
              backgroundColor: Colors.blue,
              centerTitle: true,
              elevation: 6,
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    showSearch(
                        context: context,
                        delegate: Datasearch(list: listsearch));
                  },
                ),
              ],
            ),
            drawer: Mydrawer(),
            body: ListView(children: <Widget>[
              Container(
                  height: 300,
                  width: double.infinity,
                  child: Carousel(
                      images: [
                        Image.asset(''),
                        Image.asset(''),
                        Image.asset(''),
                      ],
                      dotSize: 8,
                      dotIncreaseSize: 2,
                      dotSpacing: 20,
                      dotColor: Colors.white,
                      dotBgColor: Colors.black.withOpacity(0.5),
                      boxFit: BoxFit.cover,
                      dotIncreasedColor: Colors.blue)),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "الاقسام",
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
              ),
              Container(
                  height: 120,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                            height: 100,
                            width: 100,
                            child: ListTile(
                              title: Image.asset('', width: 80, height: 80),
                              subtitle: Container(
                                  child: Text(
                                "Sony",
                                textAlign: TextAlign.center,
                              )),
                            )),
                        Container(
                            height: 100,
                            width: 100,
                            child: ListTile(
                              title: Image.asset(
                                '',
                                width: 80,
                                height: 80,
                                fit: BoxFit.fill,
                              ),
                              subtitle: Container(
                                  child: Text(
                                "Sony",
                                textAlign: TextAlign.center,
                              )),
                            )),
                        Container(
                            height: 100,
                            width: 100,
                            child: ListTile(
                              title: Image.asset('', width: 80, height: 80),
                              subtitle: Container(
                                  child: Text(
                                "Sony",
                                textAlign: TextAlign.center,
                              )),
                            )),
                        Container(
                            height: 100,
                            width: 100,
                            child: ListTile(
                              title: Image.asset('', width: 80, height: 80),
                              subtitle: Container(
                                  child: Text(
                                "Sony",
                                textAlign: TextAlign.center,
                              )),
                            )),
                        Container(
                            height: 100,
                            width: 100,
                            child: ListTile(
                              title: Image.asset('', width: 80, height: 80),
                              subtitle: Container(
                                  child: Text(
                                "Sony",
                                textAlign: TextAlign.center,
                              )),
                            ))
                      ])), //end catogre
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "اخرالمنتجات",
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
              ),
              //start lateset products
              Container(
                  height: 400,
                  child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      children: <Widget>[
                        InkWell(
                            child: GridTile(
                              child: Image.asset(""),
                              footer: Container(
                                height: 20,
                                color: Colors.black.withOpacity(0.5),
                                child: Text(
                                  "",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            onTap: () {}),
                        InkWell(
                            child: GridTile(
                              child: Image.asset(""),
                              footer: Container(
                                height: 20,
                                color: Colors.black.withOpacity(0.5),
                                child: Text(
                                  "",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            onTap: () {}),
                        InkWell(
                            child: GridTile(
                              child: Image.asset(""),
                              footer: Container(
                                height: 20,
                                color: Colors.black.withOpacity(0.5),
                                child: Text(
                                  "",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            onTap: () {}),
                        InkWell(
                            child: GridTile(
                              child: Image.asset(""),
                              footer: Container(
                                height: 20,
                                color: Colors.black.withOpacity(0.5),
                                child: Text(
                                  "",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            onTap: () {}),
                        InkWell(
                          child: GridTile(
                            child: Image.asset(""),
                            footer: Container(
                              height: 20,
                              color: Colors.black.withOpacity(0.5),
                              child: Text(
                                "",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ]))
            ])));
  }
}

class Datasearch extends SearchDelegate<String> {
  List<dynamic> list;
  Datasearch({required this.list});
  Future getsearchdata() async {
    var url = "http//10.0.2.2:/mobil/index.php";
    var data = {"searchmobile": query};
    var response = await http.post(Uri.parse(url), body: data);
    var responsebody = jsonDecode(response.body);
    return responsebody;
  }

  @override
  List<Widget> buildActhions(BuildContext Context) {
    return [
      IconButton(
        onPressed: () {
          query = "";
        },
        icon: Icon(Icons.clear),
      )
    ];
    ;
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, 'null');
      },
      icon: Icon(Icons.arrow_back),
    );
    ;
  }

  @override
  Widget buildResults(BuildContext Context) {
    return FutureBuilder(
      future: getsearchdata(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, i) {
                return MobList(
                    mob_cat: snapshot.data[i]['mob_cat'],
                    camera_maine: snapshot.data[i]['camera_main'],
                    name: snapshot.data[i]['name'],
                    num_core: snapshot.data[i]['num_core'],
                    battery: snapshot.data[i]['battery'],
                    price_alg: snapshot.data[i]['price_eg'],
                    memory: snapshot.data[i]['memory'],
                    system: snapshot.data[i]['system'],
                    gpu: snapshot.data[i]['gpu'],
                    Screen: snapshot.data[i]['screen'],
                    camera_depth: snapshot.data[i]['camera_depth'],
                    camera_feature: snapshot.data[i]['camera_feature'],
                    camera_micro: snapshot.data[i]['camera_micro'],
                    camera_self: snapshot.data[i]['camera_self'],
                    camera_self_feature: snapshot.data[i]
                        ['camera_self_feature'],
                    camera_self_video: snapshot.data[i]['camera_self_video'],
                    camera_tele: snapshot.data[i]['camera_tele'],
                    camera_ultra: snapshot.data[i]['camera_ultra'],
                    camera_video: snapshot.data[i]['camera_video'],
                    Screen_protect: snapshot.data[i]['Screen_protect'],
                    Screen_res: snapshot.data[i]['Screen_res'],
                    price_eg: snapshot.data[i]['price_eg'],
                    price_jo: snapshot.data[i]['price_jo'],
                    price_sa: snapshot.data[i]['price_sa'],
                    price_sy: snapshot.data[i]['price_sy'],
                    price_usa: snapshot.data[i]['price_usa'],
                    cpu: snapshot.data[i]['cpu']);
              });
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext Context) {
    var searchlist =
        query.isEmpty ? list : list.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
        itemCount: searchlist.length,
        itemBuilder: (context, i) {
          return ListTile(
            leading: Icon(Icons.mobile_screen_share),
            title: Text(searchlist[i]),
            onTap: () {
              query = searchlist[i];
              showResults(context);
            },
          );
        });
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return null;
  }
}
