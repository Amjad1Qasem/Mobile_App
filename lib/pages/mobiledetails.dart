
// import 'package:flutter/material.dart'; 


// class  Mobiledetails extends StatefulWidget{
//   @override
//   _MobiledetailsState createState() =>  _MobiledetailsState();
// }
  
// class  _MobiledetailsState extends State<Mobiledetails>{
//   final name_d;
//   final Screen_d;
//   final Screen_protect_d;
//   final Screen_res_d;
//   final system_d;
//   final cpu_d;
//   final num_core_d;
//   final gpu_d;
//   final memory_d;
//   final battery_d;
//   final camera_maine_d;
//   final camera_feature_d;
//   final camera_video_d;
//   final camera_ultra_d;
//   final camera_tele_d;
//   final camera_depth_d;
//   final camera_micro_d;
//   final camera_self_d;
//   final camera_self_feature_d;
//   final camera_self_video_d;
//   final price_eg_d;
//   final price_sa_d;
//   final price_usa_d;
//   final price_jo_d;
//   final price_sy_d;
//    final price_alg_d;
//    final mob_cat;
//   Mobiledetails ({this.mob_cat,this.name_d,this.Screen_d,this.battery,this.Screen_protect_d,this.Screen_res_d,this.camera_depth_d,this.camera_feature_d,this.camera_maine_d,this.camera_micro_d,this.camera_self_d,this.camera_self_feature_d,this.camera_self_video_d,this.camera_tele_d,this.camera_ultra_d,this.camera_video_d,this.gpu_d,this.num_core,this.price_eg_d,this._d,this.price_sa_d,this.price_sy_d,this.price_usa_d,this.system_d,this.cpu_d,this.memory_d,});




//    @override
//   Widget build(BuildContext context) {
//     return Directionality(textDirection:TextDirection.rtl,child: Scaffold(
      
//         appBar:AppBar(
//           title:Text("التفاصيل"),
//           backgroundcolor: Color.blue,
//           centerTitle: true,
//           elevation:6
         

//         ),
//         body:ListView(children:<Widght>[
//           Container(
//             height:300,
//             child:GridTile(
//             child: Image.asset(""),
//             footer: Container( height:80,color:Color.black.withOpacity(0.3),
//             child:  Directionality(textDirection:TextDirection.ltr,child:Row(
//               children:<widget>[
//                 Expanded(
//                   child:Container(
//                     padding:EdgeInsets.all(10),

//                   child:Text(widget.name_d,style:Textstyle(
//                 color:Colors.white,
//                 fontSize:20,
//                 fontWeight: FontWeight.w700 ,
//               ),
//               ),)
//                 ),
//                 Padding(
//                     padding:EdgeInsets.all(10),
//              clild: Text(
//                "${widget.}\$",
//                style:Textstyle(
//                 color:Colors.white,
//                 fontSize:20,
//                 fontWeight: FontWeight.w700 ,
//               ),
//               ),)

//             ],),
//           )
        
//             ),
//             )



     


//     ),
//    Container(padding:EdgeInsets.all(10),child: Row(children:<widget>[Expanded(child:Text("المواصفات", style:TextStyle(fontSize:20),)),
//    ],
//    )),

//     Container(
//       padding:EdgeInsets.all(10),
//       child:colume(children:<widget>[
//         mySpec(context,"الموديل:",widget.name_d,Colors.white   ,Colors.blue)
//          mySpec(context,"الشاشة:",widget. Screen_d,Colors.blue   ,Colors.white)
//          mySpec(context,"الحمايات:",widget. Screen_protect_d,Colors.white   ,Colors.blue)
//         mySpec(context,"دقة الشاشة:",widget.Screen_res_d,Colors.blue   ,Colors.white)
//          mySpec(context,"نظام تشغيل:",widget. system_d,Colors.white   ,Colors.blue)
//          mySpec(context,"المعالج:",widget. cpu_d,Colors.white   ,Colors.blue)
//           mySpec(context,"المعالج الرسومي:",widget. num_core_d,Colors.blue   ,Colors.white)
//            mySpec(context,"الذاكرة:",widget.memory,Colors.white   ,Colors.blue)
//             mySpec(context,"الرام:",widget.,Colors.blue   ,Colors.white),
//              mySpec(context,"البطارية:",widget.battery,Colors.white   ,Colors.blue),

                             

//                              Padding(
//                                padding:EdgeInsets.all(10),
//                                child:Text("الكاميرات",style:TextStyle(fontsize:20),
//                                ),
//                              ),
//                              mySpec(context,"الكاميرا الرئيسية:",widget.,Colors.blue   ,Colors.white),
//                              mySpec(context,"ميزات التصوير",widget.,Colors.white   ,Colors.blue ),
//                              mySpec(context,"الفيديو:",widget.,Colors.blue    ,Colors.white),
//                              mySpec(context,"(الكاميرا ultrawide)",widget.,Colors.white   ,Colors.blue ),
//                              mySpec(context,"(الكاميرا micro)",widget.,Colors.blue    ,Colors.white),
//                               mySpec(context,"(الكاميرا depth)",widget.,Colors.white   ,Colors.blue ),
//                                mySpec(context,"(الكاميرا telephoto)",widget.,Colors.blue    ,Colors.white),
//                                 mySpec(context,"(الكاميرا الامامية)",widget.,Colors.white   ,Colors.blue ),
//                                  mySpec(context,"(ميزات التصوير)",widget.,Colors.blue    ,Colors.white),


                                 
//                              Padding(
//                                padding:EdgeInsets.all(10),
//                                child:Text("الاسعار",style:TextStyle(fontsize:20),
//                                ),
//                              ),
//                              mySpec(context,"مصر",widget.,Colors.red  ,Colors.white),
//                              mySpec(context,"السعودية",widget.,Colors.white   ,Colors.red  ),
//                              mySpec(context,"الامارات",widget.,Colors.red     ,Colors.white),
//                              mySpec(context,"سوريا",widget.,Colors.white   ,Colors.red  ),
//                              mySpec(context,"الاردن",widget.,Colors.red     ,Colors.white),
//                               mySpec(context,"الكويت",widget.,Colors.white   ,Colors.red  ),
//                                mySpec(context,"الجزائر",widget.,Colors.red     ,Colors.white),
                               




//                              myspac(context,String feature,String details, Color colorbackground, Color colortext){
//                                return container(
//                                  width:MediaQuery.of(context).size.width,
//                                  padding:EdgInsets.all(10),
//                                  color:colorbackground,
//                                  child:RichText/(
//                                    text:TextSpan(
//                                      style:
//                                      TextStyle(fontsize:19, color:CoLors.black),
//                                      children:<Textspan>[
//                                        TextSpan(text:feature),
//                                        TextSpan(
//                                          text:details,
//                                          style:TextStyle(color:colortext)
//                                        ),

//                                      ]
//                                    ),
//                                  )






//                                );
//                              }







































//          Container(
//            width:MediaQuery.of(context).size.width,
//             padding:EdgeInsets.all(10),
//            color:Colors.white,
//          child: RichTex(text: TextSpan( style:TextStyle(fontSize:18),children:<TextSpan>[
//               TextSpan("الموديل:",),
//          TextSpan("p30 pro", style:TextStyle(,color:Color.blue,),),

//            ]),)
//        ,)
//               Container(
//             padding:EdgeInsets.all(10),
//            color:Colors.blue,
//            child: RichTex(text: TextSpan(children:<TextSpan>[
//               TextSpan("الشاشة:", style:TextStyle(fontSize:18),),
//          TextSpan("super Amoled 5.5 120HZ HDR10", style:TextStyle(fontSize:18,color:Color.white,),),

//            ]),)
       
//          ,)
//               Container(
//             padding:EdgeInsets.all(10),
//            color:Colors.white,
//         child: RichTex(text: TextSpan(children:<TextSpan>[
//               TextSpan("الحمايات:", style:TextStyle(fontSize:18),),
//          TextSpan("Gorilla Glass 6,مقاومة الماءIp68", style:TextStyle(fontSize:18,color:Color.blue,),),

//            ]),),
//            ),
        
//             Container(
//             padding:EdgeInsets.all(10),
//            color:Colors.blue,
//          child: RichTex(text: TextSpan(children:<TextSpan>[
//               TextSpan(":", style:TextStyle(fontSize:18),),
//          TextSpan(" ", style:TextStyle(fontSize:18,color:Color.white,),),

//            ]),)
//        ,)
//           Container(
//             padding:EdgeInsets.all(10),
//            color:Colors.white,
//         child: RichTex(text: TextSpan(children:<TextSpan>[
//               TextSpan(":", style:TextStyle(fontSize:18),),
//          TextSpan("", style:TextStyle(fontSize:18,color:Color.blue,),),

//            ]),),
//            ),
        
//            Container(
//             padding:EdgeInsets.all(10),
//            color:Colors.blue,
//          child: RichTex(text: TextSpan(children:<TextSpan>[
//               TextSpan(":", style:TextStyle(fontSize:18),),
//          TextSpan(" ", style:TextStyle(fontSize:18,color:Color.white,),),

//            ]),)
//        ,)
        


  
//          ] ),

//     ),
//     ),
//   }
// }