import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/mobile_layout_screen.dart';
import 'package:flutter_application_1/screens/web_layout_screen.dart';
import 'package:flutter_application_1/utils/animacion_particulars.dart';
import 'package:flutter_application_1/utils/responsive_layout.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 10),
      () => Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const ResponsiveLayout(
              mobileScreenLayout: MobileLayoutScreen(),
              webScreenLayout: WebLayoutScreen(),
            ),
          ),
          (route) => false),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFD7F3FF),
                    Color(0xFF3FC4FF),
                  ],
                ),
              ),
            ),
          ),
          const Positioned.fill(
            child: AnimacionParticulas(50),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.transparent,
                  child: const Text(
                    'WhatsApp',
                    style: TextStyle(
                      fontSize: 60,
                      color: Colors.white70,
                      fontFamily: 'Kalam',
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.only(
                top: 560,
              ),
              child: Text(
                'Rama & M.ahd & Rawda',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.blueGrey,
                  fontFamily: 'Kalam',
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
