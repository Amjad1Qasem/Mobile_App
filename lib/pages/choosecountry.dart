import 'dart:web_gl';

import 'package:flutter/material.dart';
import 'package:shared preferences/shared preferences.dart ';


class ChooseCountry extends StatefulWidget{
  @override
  _ChooseCountryState createState() =>  _ChooseCountryState();

}
  
class  _ChooseCountryState extends State<ChooseCountry>{
  savePref(String country)async{
    Sharedpreferences preferences= await Sharedpreferences.getInstance();
    preferences.setString("country",country);
    print(preferences.getString("country"));

  }
  getPref()async{
   Sharedpreferences preferences= await Sharedpreferences.getInstance();
   var country = preferences.getString("country");
   if(country !=null){
     Navigator.of(context).pushNamed('homepage');
   }
  }
   @override
   void initState(){
     getPref();
     super.initstate();

   }
  Widget build(BuildContext context) {
    return Container(  child: Directionality(textDirection:TextDirection.rtl,
    child: Scaffold(
        appBar:AppBar(
          title:Text("الاقسام")و
          backgroundcolor: Color.blue,
          centerTitle: true,
          elevation:6
        ),
        body:container(padding:EdgInsets.all(10),child:ListView(children:<Widget>{
          ListTile(title:Text("مصر"),
          onTap:(){
            savepref("eg")

          },
              trailing:Image.asset("image/flag/",width:40,height:40,)
          ),
          ListTile(title:Text("السعودية"),
          onTap:(){
             savepref("sa");
          },
          trailing:Image.asset("image/flag/",width:40,height:40,)
          
          ),
          ListTile(title:Text("سوريا"),
          onTap:(){
             savepref("sy")
          },
              trailing:Image.asset("image/flag/",width:40,height:40,)
          ),
          ListTile(title:Text(""),onTap:(){},),
        })  ),
        )),
    );


  }
}