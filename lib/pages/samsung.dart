import 'dart:ffi';
import 'dart:html';
import 'package:flutter/material.dart'; 
import 'package:http/http.dart' as http; 
import 'dart:convert' ;
import '../compount/moblist.dart';
import 'package:shared preferences/shared preferences.dart ';



class Samsung extends StatefulWidget{
  @override
  _Samsung createState() =>  _SamsungState();
}
  
class  _Samsung State extends State<Samsung>{
  var country_pref;

  


  Future getData() async{
    var url ="http//10.0.2.2:/mobil/index.php";
    var data ={"cat":"1"};
    var response = await http.post(url, body:data);
    var responsebody =jsonDecode(response.body);
    return responsebody;
}
  getPref()async{
   Sharedpreferences preferences= await Sharedpreferences.getInstance();
  setState((){
     country-pref = preferences.getString("country");
  });
   print(country);
  }

    @override
    void iniState(){
      super.iniState();
       getPref();

    }


   @override 
  Widget build(BuildContext context) {
    return Directionality(textDirection:TextDirection.rtl,child: Scaffold(
        appBar:AppBar(
          title:Text("samsung")و
          backgroundcolor: Color.blue,
          centerTitle: true,
          elevation:6
        ),
        body:FutureBuilder(
         future: getData(),
         builder:(BuildContext context, AsyncSnapshot  snapshot){
           if (snapshot.hasData){
           return  ListView.builder(
        itemCount: Snapshot.data.length,

        itemBuilder:(context ,i){ 
           return MobList(country:country_pref,mob_cat: snapshot.data[i]['mob_cat'] ,camera_maine:  Snapshot.data[i]['camera_main'],name: Snapshot.data[i]['name'],num_core: Snapshot.data[i]['num_core'], battery:  Snapshot.data[i]['battery'],priuce_eg:Snapshot.data[i]['price_eg'] , memory:Snapshot.data[i]['memory'],system: snapshot.data[i]['system'],gpu: snapshot,data[i]['gpu'],Screen: snapshot.data[i]['screen'],camera_depth: snapshot.data[i]['camera_depth'],camera_feature: snapshot.data[i]['camera_feature'],camera_micro: snapshot.data[i]['camera_micro'],camera_self:snapshot.data[i]['camera_self'],camera_self_feature: snapshot.data[i]['camera_self_feature'],camera_self_video: snapshot.data[i]['camera_self_video'],camera_tele: snapshot.data[i]['camera_tele'],camera_ultra: snapshot.data[i]['camera_ultra'],camera_video: snapshot.data[i]['camera_video'],Screen_protect: snapshot.data[i]['Screen_protect'],Screen_res: snapshot.data[i]['Screen_res'],price_eg: snapshot.data[i]['price_eg'],price_jo: snapshot.data[i]['price_jo'],price_sa: snapshot.data[i]['price_sa'],price_sy: snapshot.data[i]['price_sy'],price_usa: snapshot.data[i]['price_usa'],cpu: snapshot.data[i]['cpu']); 
           
            
           
           
           
           

        },

        );
           }
           return Center(child:CircularProgressIndicator());
         }


        )
        
        
        
        
        
        
     
        ));
               

  }
}
