import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/navigator_screen.dart';







class Mydrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Drawer(
          child: ListView(
            children:<Widget>[
              UserAccountsDrawerHeader(
                accountEmail:Text("bayan@gmail.com"),
                   accountName:Text("Bayan Ahmed"),
                   currentAccountpicture: CircleAvatar(child:Icon(Icons.person)),
                   decoration: BoxDecoration(
                    image:DecorationImage(
                    AssetImage(),fit: BoxFit.cover) 
                
                   )
                   )
                   ListTitle(
                     title: Text("الصفحة الرئيسية", style: TextStyle(color:Colors.black ,fontSize: 18 ), ) 
                     leading:Icon(Icon.home ,color: Colors,blue,size: 25,),
                     onTap:(){
                        Navigator.of(context).pushNamede('homepage');
                     }
                     
                
                   )
                    ListTitle(
                     title: Text("الاقسام", style: TextStyle(color:Colors.black ,fontSize: 18 ), ) 
                     leading:Icon(Icon.category ,color: Colors,blue,size: 25,),
                     onTap:(){
                       Navigator.of(context).pushNamede('categories');
                     }
                     
                
                  )
                   ListTitle(
                     title: Text("حول التطبيق", style: TextStyle(color:Colors.black ,fontSize: 18 ), )  
                       leading:Icon(Icon.info ,color: Colors,blue,size: 25,),
                     onTap:(){}
                     
                
                   )
                    ListTitle(
                     title: Text("الاعدادات ", style: TextStyle(color:Colors.black ,fontSize: 18 ), )  
                       leading:Icon(Icon.settings ,color: Colors,blue,size: 25,),
                     onTap:(){}
                     
                
                   )
                    ListTitle(
                     title: Text("تسجيل الدخول", style: TextStyle(color:Colors.black ,fontSize: 18 ), )   
                     leading:Icon(Icon.exit_to_app ,color: Colors,blue,size: 25,),
                     onTap:(){
                       Navigator.of(context).pushNamed("login")
                     }
                     
                
                   )

              )
            ]
          );
  }
}