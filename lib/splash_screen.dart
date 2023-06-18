import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_body_mass_index_calculator/main.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 4),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext) => MyHomePage(
            title: "BMI Calculator",
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.sizeOf(context);
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;
    return Scaffold(
        body: Center(
      child: Container(
        width: screenWidth,
        height: screenHeight,
        color: Color.fromARGB(255, 249, 228, 235),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: screenWidth * 0.4,
                height: screenHeight * 0.3,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/bmi_logo.png"),
                      fit: BoxFit.fill),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.1,
              ),
              Text("A Project By :",
                  style: GoogleFonts.caveat(
                      color: Colors.brown.shade300,
                      fontSize: screenHeight * 0.035,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        BoxShadow(
                          blurRadius: 10,
                          color: Colors.white.withOpacity(0.5),
                          offset: Offset(-10, -10),
                        ),
                        BoxShadow(
                          blurRadius: 6,
                          color: Colors.pinkAccent.withOpacity(0.4),
                          offset: Offset(4, 4),
                        )
                      ])),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Text("MASK Group of Companies :",
                  style: GoogleFonts.caveat(
                      color: Colors.brown.shade300,
                      fontSize: screenHeight * 0.035,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        BoxShadow(
                          blurRadius: 10,
                          color: Colors.white.withOpacity(0.5),
                          offset: Offset(-10, -10),
                        ),
                        BoxShadow(
                          blurRadius: 6,
                          color: Colors.pinkAccent.withOpacity(0.4),
                          offset: Offset(4, 4),
                        )
                      ])),
            ]),
      ),
    ));
  }
}
