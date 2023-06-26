import 'package:flutter/material.dart';

class MobList extends StatelessWidget {
  var price;
  final country;
  final name;
  final Screen;
  final Screen_protect;
  final Screen_res;
  final system;
  final cpu;
  final num_core;
  final gpu;
  final memory;
  final battery;
  final camera_maine;
  final camera_feature;
  final camera_video;
  final camera_ultra;
  final camera_tele;
  final camera_depth;
  final camera_micro;
  final camera_self;
  final camera_self_feature;
  final camera_self_video;
  final price_eg;
  final price_sa;
  final price_usa;
  final price_jo;
  final price_sy;
  final price_alg;
  final mob_cat;

  MobList(
      {Key? key,
      this.country,
      this.Screen,
      this.battery,
      this.Screen_protect,
      this.Screen_res,
      this.camera_depth,
      this.camera_feature,
      this.camera_maine,
      this.camera_micro,
      this.camera_self,
      this.camera_self_feature,
      this.camera_self_video,
      this.camera_tele,
      this.camera_ultra,
      this.camera_video,
      this.gpu,
      this.num_core,
      this.price_eg,
      this.price_jo,
      this.price_sa,
      this.price_sy,
      this.price_usa,
      this.system,
      this.cpu,
      this.memory,
      this.name,
      this.mob_cat,
      this.price,
      this.price_alg})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (country == "sa") {
      price = price_sa;
    }
    if (country == "eg") {
      price = price_eg;
    }
    if (country == "sy") {
      price = price_sy;
    }
    return InkWell(
      onTap: () {
        //  Navigator.of(context).push(MaterialPageRoute(builder:(context){
        //    return MobileDetails(mob_cat:mob_cat,name_d:name,Screen_d:Screen,battery_d:battery,Screen_protect_d:Screen_protect,Screen_res_d:Screen_res,camera_depth_d:camera_depth,camera_feature_d:camera_feature,camera_maine_d:camera_maine,camera_micro_d:camera_micro,camera_self_d:camera_self,camera_self_feature_d:camera_self_feature,camera_self_video_d:camera_self_video,camera_tele_d:camera_tele,camera_ultra_d:camera_ultra,camera_video_d:camera_video,gpu_d:gpu,num_core_d:num_core,price_eg_d:price_eg,price_sa_d:price_sa,price_sy_d:price_sy,price_usa_d:price_usa,system_d:system,cpu_d:cpu,memory_d:memory,);
        //  }));
      },
      child: SizedBox(
        height: 140,
        width: 100,
        child: Card(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Image.asset("", fit: BoxFit.cover),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.topRight,
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(name,
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w800),
                            textAlign: TextAlign.center),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                const Text(
                                  "الكاميرا:",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  camera_maine,
                                  style: const TextStyle(color: Colors.blue),
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              const Text(
                                "المعالج:",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(cpu,
                                  style: const TextStyle(color: Colors.blue)),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                const Text(
                                  "البطارية:",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(battery,
                                    style: const TextStyle(color: Colors.blue)),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              const Text(
                                "الذاكرة",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(memory,
                                  style: const TextStyle(color: Colors.blue)),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Text(
                                  "السعر:$price",
                                  style: const TextStyle(
                                      color: Colors.grey, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          const Row(
                            children: [
                              Text(
                                "للمزيد اضغط على الجوال",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
