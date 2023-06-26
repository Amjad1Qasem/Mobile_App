import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/categories.dart';
import 'package:flutter_application_1/pages/choosecountry.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/mobiledetails.dart';
import 'package:flutter_application_1/pages/samsung.dart'; 
import'package:mobil/pages/categories.dart';
import'package:mobil/pages/samsung.dart';



void main()=> runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mobil",
      theme: ThemeData(fontFamily:''),  
      home:ChooseCountry() ,
      routes:{
        'categories':(context)
          => Categories(),
        'categories':(context)
          => Home(),
        'categories':(context)
          => Samsung(),
        'categories':(context)
          => Login(),
        
      }
   
    
      
     

      


 
    );
    
}
}












class name extends StatelessWidget {
  const name({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}