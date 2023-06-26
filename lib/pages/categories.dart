import 'package:flutter/material.dart'; 
import'../compount/mydrawer.dart';
import './pages/home.dart';  

class Categories extends StatefulWidget{
  @override
  _CategoriesState createState() =>  _CategoriesState();
}
  
class  _CategoriesState extends State<Categories>{
   @override
  Widget build(BuildContext context) {
    return Directionality(textDirection:TextDirection.rtl,child: Scaffold(
        appBar:AppBar(
          title:Text("الاقسام")و
          backgroundcolor: Color.blue,
          centerTitle: true,
          elevation:6

          

        ),
        drawer:MyDrawer(),
        body: Gridview(
              gridDelegate: SliveeGridDelegateWithFixedCrossAxisCount(crossAxisCount:2),
              children:<Widget>[
               Container(child: Card(child:Colume(children:<Widght>[
               Expanded(child: Image.asset("" ,fit:BoxFit.cover ), ),
               Container(child:Text("samsung",style:TextStyle(fontSize:20),))
               ],),) , onTap:(){
                  Navigator.of(context).pushNamede('samsung');
               }               
               ),
                Container(child: Card(child:Colume(children:<Widght>[
               Expanded(child: Image.asset("" ,fit:BoxFit.cover ), ),
               Container(child:Text("samsung",style:TextStyle(fontSize:20),))
               ],),)),
                Container(child: Card(child:Colume(children:<Widght>[
               Expanded(child: Image.asset("" ,fit:BoxFit.cover ), ),
               Container(child:Text("samsung",style:TextStyle(fontSize:20),))
               ],),)),
                Container(child: Card(child:Colume(children:<Widght>[
               Expanded(child: Image.asset("" ,fit:BoxFit.cover ), ),
               Container(child:Text("samsung",style:TextStyle(fontSize:20),))
               ],),)),
                Container(child: Card(child:Colume(children:<Widght>[
               Expanded(child: Image.asset("" ,fit:BoxFit.cover ), ),
               Container(child:Text("samsung",style:TextStyle(fontSize:20),))
               ],),)),
               
              ]
          )
        
        
         )
    );
  }
}