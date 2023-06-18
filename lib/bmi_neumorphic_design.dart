import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NeumorphicDesignBMICalculator extends StatefulWidget {
  const NeumorphicDesignBMICalculator({super.key});

  @override
  State<NeumorphicDesignBMICalculator> createState() =>
      _NeumorphicDesignBMICalculatorState();
}

class _NeumorphicDesignBMICalculatorState
    extends State<NeumorphicDesignBMICalculator> {
  bool isGenderIsMale = false;
  bool isGenderIsFemale = false;
  bool isCalculateIsPressed = false;

  double weightCounter = 0.0;
  double ageCounter = 0.0;
  double heightCounter = 0.0;

  double sliderCurrentValue = 0.0;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.sizeOf(context);
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;
    var clientHeight = screenHeight - kToolbarHeight;

    return Container(
      width: screenWidth,
      height: clientHeight,
      color: Colors.limeAccent.shade100,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        textDirection: TextDirection.ltr,
        children: [
          Row(
            textDirection: TextDirection.ltr,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                child: Container(
                  alignment: Alignment.center,
                  height: clientHeight * 0.08,
                  width: screenWidth * 0.43,
                  decoration: BoxDecoration(
                      color: Colors.limeAccent.shade100,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white.withOpacity(0.6),
                            blurRadius: 6,
                            offset: Offset(-5, -5)),
                        BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 8,
                            offset: Offset(6, 6))
                      ]),
                  child: Text("Male",
                      style: GoogleFonts.pacifico(
                        color: Colors.black54,
                        fontSize: clientHeight * 0.04,
                      )),
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
                  alignment: Alignment.center,
                  height: clientHeight * 0.08,
                  width: screenWidth * 0.43,
                  decoration: BoxDecoration(
                      color: Colors.limeAccent.shade100,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white.withOpacity(0.6),
                            blurRadius: 6,
                            offset: Offset(-5, -5)),
                        BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 8,
                            offset: Offset(6, 6))
                      ]),
                  child: Text("Female",
                      style: GoogleFonts.pacifico(
                        color: Colors.black54,
                        fontSize: clientHeight * 0.04,
                      )),
                ),
                onTap: () {
                  setState(() {
                    isGenderIsFemale = true;
                    isGenderIsMale = false;
                  });
                },
              ),
            ],
          ),
          Row(
            textDirection: TextDirection.ltr,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  alignment: Alignment.center,
                  height: clientHeight * 0.54,
                  width: screenWidth * 0.43,
                  decoration: BoxDecoration(
                      color: Colors.limeAccent.shade100,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white.withOpacity(0.6),
                            blurRadius: 7,
                            offset: Offset(6, -6)),
                        BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 8,
                            offset: Offset(5, 5))
                      ]),
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.purple.shade100,
                          activeTickMarkColor: Colors.purple.shade100,
                          thumbColor: Colors.purpleAccent,
                          valueIndicatorColor: Colors.purple.shade400,
                          trackShape: RectangularSliderTrackShape(),
                          valueIndicatorTextStyle: TextStyle(
                            color: Colors.purple.shade200,
                            fontSize: 12,
                          )),
                      child: Slider(
                          value: sliderCurrentValue,
                          max: 280.0,
                          //    division is used to make steps of slider you can only jump from one step to another
                          divisions: 10,
                          label: sliderCurrentValue.round().toString(),
                          onChanged: (double value) {
                            setState(() {
                              sliderCurrentValue = value;
                              heightCounter = sliderCurrentValue;
                            });
                          }),
                    ),
                  )),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                textDirection: TextDirection.ltr,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: clientHeight * 0.255,
                    width: screenWidth * 0.43,
                    decoration: BoxDecoration(
                        color: Colors.limeAccent.shade100,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white.withOpacity(0.6),
                              blurRadius: 7,
                              offset: Offset(-6, -6)),
                          BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 8,
                              offset: Offset(5, 5))
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      textDirection: TextDirection.ltr,
                      children: [
                        Text("Weight",
                            style: GoogleFonts.pacifico(
                              color: Colors.black54,
                              fontSize: clientHeight * 0.03,
                            )),
                        Text(
                          "$weightCounter",
                          style: GoogleFonts.pacifico(
                            color: Colors.black,
                            fontSize: clientHeight * 0.08,
                          ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            textDirection: TextDirection.ltr,
                            children: [
                              InkWell(
                                child: Container(
                                  width: screenWidth * 0.13,
                                  height: clientHeight * 0.065,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.limeAccent.shade100,
                                    borderRadius: BorderRadius.circular(360),
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
                                    color: Colors.black,
                                    size: 35,
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
                                    width: screenWidth * 0.13,
                                    height: clientHeight * 0.065,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.limeAccent.shade100,
                                      borderRadius: BorderRadius.circular(360),
                                      boxShadow: [
                                        BoxShadow(
                                            color:
                                                Colors.white.withOpacity(0.4),
                                            blurRadius: 4,
                                            offset: Offset(-4, -4)),
                                        BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            blurRadius: 4,
                                            offset: Offset(4, 4))
                                      ],
                                    ),
                                    child: Text("-",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: clientHeight * 0.055,
                                        ))),
                                onTap: () {
                                  setState(() {
                                    if (weightCounter > 0) {
                                      weightCounter -= 1;
                                    }
                                  });
                                },
                              ),
                            ])
                      ],
                    ),
                  ),
                  SizedBox(
                    height: clientHeight * 0.02,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: clientHeight * 0.255,
                    width: screenWidth * 0.43,
                    decoration: BoxDecoration(
                        color: Colors.limeAccent.shade100,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white.withOpacity(0.6),
                              blurRadius: 7,
                              offset: Offset(-6, -6)),
                          BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 8,
                              offset: Offset(5, 5))
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      textDirection: TextDirection.ltr,
                      children: [
                        Text("Age",
                            style: GoogleFonts.pacifico(
                              color: Colors.black54,
                              fontSize: clientHeight * 0.03,
                            )),
                        Text(
                          "$ageCounter",
                          style: GoogleFonts.pacifico(
                            color: Colors.black,
                            fontSize: clientHeight * 0.08,
                          ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            textDirection: TextDirection.ltr,
                            children: [
                              InkWell(
                                child: Container(
                                  width: screenWidth * 0.13,
                                  height: clientHeight * 0.065,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.limeAccent.shade100,
                                    borderRadius: BorderRadius.circular(360),
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
                                    color: Colors.black,
                                    size: 35,
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
                                    width: screenWidth * 0.13,
                                    height: clientHeight * 0.065,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.limeAccent.shade100,
                                      borderRadius: BorderRadius.circular(360),
                                      boxShadow: [
                                        BoxShadow(
                                            color:
                                                Colors.white.withOpacity(0.4),
                                            blurRadius: 4,
                                            offset: Offset(-4, -4)),
                                        BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            blurRadius: 4,
                                            offset: Offset(4, 4))
                                      ],
                                    ),
                                    child: Text("-",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: clientHeight * 0.055,
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
                  ),
                ],
              )
            ],
          ),
          InkWell(
            child: Container(
              alignment: Alignment.center,
              height: clientHeight * 0.08,
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                  color: Colors.limeAccent.shade100,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white.withOpacity(0.6),
                        blurRadius: 6,
                        offset: Offset(-5, -5)),
                    BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 8,
                        offset: Offset(4, 4))
                  ]),
              child: Text("Calculate BMI",
                  style: GoogleFonts.pacifico(
                    color: Colors.black45,
                    fontSize: clientHeight * 0.04,
                  )),
            ),
            onTap: () {
              setState(() {
                print("BMI is calculating");
                if (isGenderIsMale) {
                  print("Gender is Female");
                } else {
                  print("Gender is Female");
                }
                print("Weight : $weightCounter");
                print("Age : $ageCounter");
                print("Height : $heightCounter");
              });
            },
          ),
        ],
      ),
    );
  }
}
