import 'package:flutter/material.dart';

class SimpleBMICalculatorDesign extends StatefulWidget {
  const SimpleBMICalculatorDesign({super.key});

  @override
  State<SimpleBMICalculatorDesign> createState() =>
      _SimpleBMICalculatorDesignState();
}

class _SimpleBMICalculatorDesignState extends State<SimpleBMICalculatorDesign> {
  bool isGenderIsMale = false;
  bool isGenderIsFemale = false;
  double currentSliderValue = 0.0;
  double ageCounter = 0.0;
  double weightCounter = 0.0;
  double heightCounter = 0.0;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.sizeOf(context);
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;
    var clientHeight = screenHeight - kToolbarHeight;
    return Container(
      width: screenWidth,
      height: clientHeight,
      color: Color.fromARGB(255, 3, 33, 58),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        textDirection: TextDirection.ltr,
        children: [
          SizedBox(
            height: clientHeight * 0.05,
          ),
          SizedBox(
            width: screenWidth,
            height: clientHeight * 0.15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              textDirection: TextDirection.ltr,
              children: [
                InkWell(
                  child: Container(
                    width: screenWidth * 0.3,
                    height: clientHeight * 0.15,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 3, 33, 58),
                      borderRadius: BorderRadius.circular(360),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white.withOpacity(0.5),
                            blurRadius: 7,
                            offset: Offset(-5, -5)),
                        BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 10,
                            offset: Offset(7, 7))
                      ],
                    ),
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 100,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      isGenderIsMale = true;
                      isGenderIsFemale = false;
                    });
                  },
                ),
                InkWell(
                  child: Container(
                    width: screenWidth * 0.3,
                    // height: clientHeight * 0.2,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 3, 33, 58),
                        borderRadius: BorderRadius.circular(360),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white.withOpacity(0.4),
                              blurRadius: 8,
                              offset: Offset(-5, -5)),
                          BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 10,
                              offset: Offset(7, 7))
                        ],
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/female.png'))),
                  ),
                  onTap: () {
                    setState(() {
                      isGenderIsMale = false;
                      isGenderIsFemale = true;
                    });
                  },
                )
              ],
            ),
          ),
          SizedBox(
            height: clientHeight * 0.05,
          ),
          SizedBox(
            width: screenWidth * 0.85,
            height: clientHeight * 0.22,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 3, 33, 58),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.white.withOpacity(0.2),
                      blurRadius: 2,
                      offset: Offset(-4, -4)),
                  BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 10,
                      offset: Offset(4, 4))
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                textDirection: TextDirection.ltr,
                children: [
                  Text("Height  (cm)",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: clientHeight * 0.03,
                      )),
                  Text(
                    "${currentSliderValue.round().toString()}",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: clientHeight * 0.054,
                        fontWeight: FontWeight.bold),
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                        activeTickMarkColor: Colors.white,
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.grey,
                        thumbColor: Colors.brown.shade300),
                    child: Slider(
                        value: currentSliderValue,
                        max: 275.0,
                        //    division is used to make steps of slider you can only jump from one step to another
                        divisions: 3,
                        // label: currentValue.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            currentSliderValue = value;
                            heightCounter = currentSliderValue;
                          });
                        }),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: clientHeight * 0.05,
          ),
          SizedBox(
            width: screenWidth,
            height: clientHeight * 0.23,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              textDirection: TextDirection.ltr,
              children: [
                Container(
                  width: screenWidth * 0.4,
                  // height: clientHeight * 0.2,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 3, 33, 58),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white.withOpacity(0.2),
                          blurRadius: 2,
                          offset: Offset(-4, -4)),
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 10,
                          offset: Offset(4, 4))
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    textDirection: TextDirection.ltr,
                    children: [
                      Text("weight",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: clientHeight * 0.03,
                          )),
                      Text(
                        "$weightCounter",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: clientHeight * 0.054,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          textDirection: TextDirection.ltr,
                          children: [
                            InkWell(
                              child: Container(
                                width: screenWidth * 0.12,
                                height: clientHeight * 0.05,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 3, 33, 58),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.white.withOpacity(0.5),
                                        blurRadius: 4,
                                        offset: Offset(-4, -4)),
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.5),
                                        blurRadius: 4,
                                        offset: Offset(4, 4))
                                  ],
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  weightCounter += 1;
                                });
                              },
                            ),
                            InkWell(
                              child: Container(
                                  width: screenWidth * 0.12,
                                  height: clientHeight * 0.05,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 3, 33, 58),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.white.withOpacity(0.4),
                                          blurRadius: 4,
                                          offset: Offset(-4, -4)),
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.5),
                                          blurRadius: 4,
                                          offset: Offset(4, 4))
                                    ],
                                  ),
                                  child: Text("-",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: clientHeight * 0.04,
                                      ))),
                              onTap: () {
                                setState(() {
                                  if (weightCounter > 0) {
                                    weightCounter -= 1;
                                  }
                                });
                              },
                            )
                          ])
                    ],
                  ),
                ),
                Container(
                  width: screenWidth * 0.4,
                  // height: clientHeight * 0.2,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 3, 33, 58),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white.withOpacity(0.2),
                          blurRadius: 2,
                          offset: Offset(-4, -4)),
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 10,
                          offset: Offset(4, 4))
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    textDirection: TextDirection.ltr,
                    children: [
                      Text("Age",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: clientHeight * 0.03,
                          )),
                      Text(
                        "$ageCounter",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: clientHeight * 0.054,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          textDirection: TextDirection.ltr,
                          children: [
                            InkWell(
                              child: Container(
                                width: screenWidth * 0.12,
                                height: clientHeight * 0.05,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 3, 33, 58),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.white.withOpacity(0.5),
                                        blurRadius: 4,
                                        offset: Offset(-4, -4)),
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.5),
                                        blurRadius: 4,
                                        offset: Offset(4, 4))
                                  ],
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  ageCounter += 1;
                                });
                              },
                            ),
                            InkWell(
                              child: Container(
                                  width: screenWidth * 0.12,
                                  height: clientHeight * 0.05,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 3, 33, 58),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.white.withOpacity(0.4),
                                          blurRadius: 4,
                                          offset: Offset(-4, -4)),
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.5),
                                          blurRadius: 4,
                                          offset: Offset(4, 4))
                                    ],
                                  ),
                                  child: Text("-",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: clientHeight * 0.04,
                                      ))),
                              onTap: () {
                                setState(() {
                                  if (ageCounter > 0) {
                                    ageCounter -= 1;
                                  }
                                });
                              },
                            ),
                          ])
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: clientHeight * 0.05,
          ),
          InkWell(
            child: Container(
                width: screenWidth * 0.8,
                height: clientHeight * 0.1,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 3, 33, 58),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white.withOpacity(0.5),
                        blurRadius: 7,
                        offset: Offset(-5, -5)),
                    BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 10,
                        offset: Offset(7, 7))
                  ],
                ),
                padding: EdgeInsets.only(top: clientHeight * 0.015),
                child: Text(
                  "Calculate",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: clientHeight * 0.05,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      BoxShadow(
                          color: Colors.white.withOpacity(0.5),
                          blurRadius: 5,
                          offset: Offset(-4, -3)),
                      BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 5,
                          offset: Offset(4, 4))
                    ],
                  ),
                )),
            onTap: () {
              print("Calculating BMI");
              if (isGenderIsMale) {
                print("Gender is Female");
              } else {
                print("Gender is Female");
              }
              print("Height is : $heightCounter");
              print("Weight is : $weightCounter");
              print("Age is : $ageCounter");
            },
          ),
        ],
      ),
    );
  }
}
