import 'package:http/http.dart' as http; 
import 'dart:covert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/compount/moblist.dart';
import'../compount/mydrawer.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:shared preferences/shared preferences.dart ';

class Home extends StatefulWidget {
  State<StatefulWidget> createState(){
    return HomeState();
  }
     
}
class HomeState extends State<Home>{
  var listsearch=[];
  Future getData() async{
    var country;
    var url ="http//10.0.2.2/mobil/search.php";
    var data ={"cat":"1"};
    var response = await http.get(url, body:data);
    var responsebody =jsonDecode(response.body);
    for(int i=0;i < responsebody.length;i++){
      listsearch.add( responsebody[i]['name']);


    }
    print(listsearch);
  }
    getPref()async{
   Sharedpreferences preferences= await Sharedpreferences.getInstance();
   var country = preferences.getString("country");
   print(country);
 
   }



    @override
    void initState(){
      getData();
      getPref();
      
      super. initState();

    }





    return responsebody;
   @override
  Widget build(BuildContext context) {
    return Directionality(textDirection:TextDirection.rtl,child: Scaffold(
      
        appBar:AppBar(
          title:Text("Mobil"),
          backgroundcolor: Color.blue,
          centerTitle: true,
          elevation:6
          actions: <Widget>[
            IconButton(icon: Icon(Icon.search), onpressed:(){
              showSearch(context: context,delegate:Datasearch(list:listsearch));

            })
          ]

        ),
        drawer:MyDrawer() ,
        body: ListView(
          children:<Widget>[
            Container(
              hight:300,
              width:double.infinity,
              child:Carousel(
                image:[
                  AssetImage(''),
                   AssetImage(''),
                    AssetImage(''),
                ],
                dotSize:8
                dotIncreaseSize :2 ,
                dotSpacing:20 ,
                dotcolor :Colors.white ,
                dotBgcolor :Colors.black.whiteOpacity(0.5),
                boxFit:BoxFit.cover,
                dotIncreasecolor:Colors.blue

              )
            )
            Container(padding:EdgeInsets.all(10) , child: Text("الاقسام" ,style:TextStyle(fontSize:20,color: Colors.blue),),),
            Container(height: 120, child: ListView(
              scrollDirection: Axis.horizontal,
              children:<Widget>[
                Container(
                  height: 100,
                  width: 100,
                  child: ListTitle(
                    title:Image.asset('' , width:80, height:80)
                    subtitle:Container(child:Text("Sony" ,textAlign: Text.center, )) ,
                  )
                )
                Container(
                  height: 100,
                  width: 100,
                  child: ListTitle(
                    title:Image.asset('' , width:80, height:80,fit: BoxFit.fill,),
                    subtitle:Container(child:Text("Sony" ,textAlign: Text.center, )) ,
                  )
                )
                Container(
                  height: 100,
                  width: 100,
                  child: ListTitle(
                    title:Image.asset('' , width:80, height:80)
                    subtitle:Container(child:Text("Sony" ,textAlign: Text.center, )) ,
                  )
                )
                Container(
                  height: 100,
                  width: 100,
                  child: ListTitle(
                    title:Image.asset('' , width:80, height:80)
                    subtitle:Container(child:Text("Sony" ,textAlign: Text.center, )) ,
                  )
                )
                Container(
                  height: 100,
                  width: 100,
                  child: ListTitle(
                    title:Image.asset('' , width:80, height:80)
                    subtitle:Container(child:Text("Sony" ,textAlign: Text.center, )) ,
                  )
                )
              ]
            )),//end catogre
            Container(padding:EdgeInsets.all(10) , child: Text("اخرالمنتجات" ,style:TextStyle(fontSize:20,color: Colors.blue),),),
            //start lateset products
            Container(height:400
            ,child:Gridview(
              gridDelegate: SliveeGridDelegateWithFixedCrossAxisCount(crossAxisCount:2),
              children:<Widget>[
               InkWell(child:  GridTile(child: Image.asset(""),footer: Container(hight20, color:Colors.black.whiteOpacity(0.5), child:Text("",style:TextStyle(color:Colors.white ,fontweight:Fontweight.w700), textAlign:TextAlign.center,),),),onTap: (){})
               InkWell(child: GridTile(child: Image.asset(""),footer: Container(hight20, color:Colors.black.whiteOpacity(0.5), child:Text("",style:TextStyle(color:Colors.white ,fontweight:Fontweight.w700), textAlign:TextAlign.center,),),),onTap: (){})
                InkWell(child:GridTile(child: Image.asset(""),footer: Container(hight20, color:Colors.black.whiteOpacity(0.5), child:Text("",style:TextStyle(color:Colors.white ,fontweight:Fontweight.w700), textAlign:TextAlign.center,),),),onTap: (){})
               InkWell(child: GridTile(child: Image.asset(""),footer: Container(hight20, color:Colors.black.whiteOpacity(0.5), child:Text("",style:TextStyle(color:Colors.white ,fontweight:Fontweight.w700), textAlign:TextAlign.center,),),),onTap: (){})
                InkWell(child:GridTile(child: Image.asset(""),footer: Container(hight20, color:Colors.black.whiteOpacity(0.5), child:Text("",style:TextStyle(color:Colors.white ,fontweight:Fontweight.w700), textAlign:TextAlign.center,),),),)
                 
              ]

          )
            )
          ]
        )
      
        )
        
      );
}
}
class Datasearch extend SearchDelegate<String>{
  List<dynamic> list ;
  Datasearch({this.list})
   Future getsearchdata() async{
    var url ="http//10.0.2.2:/mobil/index.php";
    var data ={"searchmobile":query};
    var response = await http.post(url, body:data);
    var responsebody =jsonDecode(response.body);
    return responsebody;
   }



  @override
List<Widget> buildActhions(BuildContext Context){
    return [  
      IconButton(onPressed:(){
        query ="";

      },icon:Icon(Icons.clear),)

    ];;
  }
    @override
Widget buildLeading(BuildContext Context){
    return  IconButton(onPressed:(){
      close(context,null);

        
      },icon:Icon(Icons.arrow_back),);;
  }
    @override
Widget buildResults(BuildContext Context){
    return FutureBuilder(future: getsearchdata(),
    builder:(Buildcontext context,AsyncSnapshot snapshot ){
      if (snapshot.hasData){
        return ListView.builder(itemCount:sapshot.data.length ,itemBuilder:(context,i){
          return MobList(MobList(mob_cat: snapshot.data[i]['mob_cat'] ,camera_maine:  Snapshot.data[i]['camera_main'],name: Snapshot.data[i]['name'],num_core: Snapshot.data[i]['num_core'], battery:  Snapshot.data[i]['battery'],priuce_eg:Snapshot.data[i]['price_eg'] , memory:Snapshot.data[i]['memory'],system: snapshot.data[i]['system'],gpu: snapshot,data[i]['gpu'],Screen: snapshot.data[i]['screen'],camera_depth: snapshot.data[i]['camera_depth'],camera_feature: snapshot.data[i]['camera_feature'],camera_micro: snapshot.data[i]['camera_micro'],camera_self:snapshot.data[i]['camera_self'],camera_self_feature: snapshot.data[i]['camera_self_feature'],camera_self_video: snapshot.data[i]['camera_self_video'],camera_tele: snapshot.data[i]['camera_tele'],camera_ultra: snapshot.data[i]['camera_ultra'],camera_video: snapshot.data[i]['camera_video'],Screen_protect: snapshot.data[i]['Screen_protect'],Screen_res: snapshot.data[i]['Screen_res'],price_eg: snapshot.data[i]['price_eg'],price_jo: snapshot.data[i]['price_jo'],price_sa: snapshot.data[i]['price_sa'],price_sy: snapshot.data[i]['price_sy'],price_usa: snapshot.data[i]['price_usa'],cpu: snapshot.data[i]['cpu']); )


        });
      }
      return  Center(child:CircularProgressIndicator());



      
    },
    );
    
    
    
  }
    @override
Widget buildSuggestions(BuildContext Context){ 
  var searchlist =query.isEmpty ? list:list.where((p) => p.startsWith(query)).toList();


    return ListView.builder(itemcount:searchlist.length,itemBuilder:(context,i){
      return ListTile(leading:Icon(Icons.mobile_screen_share),title:Text(searchlist[i]),
       onTap:(){
         query=searchlist[i];
         showResults(context);
        
      },
      );
    
    });
  }
}

















