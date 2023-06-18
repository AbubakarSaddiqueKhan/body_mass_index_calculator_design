import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationDesignBMICalculatorWelcomePage extends StatefulWidget {
  const NavigationDesignBMICalculatorWelcomePage({super.key});

  @override
  State<NavigationDesignBMICalculatorWelcomePage> createState() =>
      _NavigationDesignBMICalculatorWelcomePageState();
}

class _NavigationDesignBMICalculatorWelcomePageState
    extends State<NavigationDesignBMICalculatorWelcomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.sizeOf(context);
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;
    var clientHeight = screenHeight - kToolbarHeight;
    return Material(
      child: Container(
        width: screenWidth,
        height: clientHeight,
        alignment: Alignment.center,
        color: Color.fromARGB(255, 249, 228, 235),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          textDirection: TextDirection.ltr,
          children: [
            Text("Welcome",
                style: GoogleFonts.caveat(
                    color: Colors.brown.shade300,
                    fontSize: clientHeight * 0.07,
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
            Container(
              width: screenWidth * 0.8,
              height: clientHeight * 0.3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  "assets/images/bmi.png",
                ),
              )),
            ),
            InkWell(
              child: Container(
                width: screenWidth * 0.8,
                height: clientHeight * 0.08,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 249, 228, 235),
                    // color: Colors.pinkAccent.shade100,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        color: Colors.white.withOpacity(0.7),
                        offset: Offset(-10, -10),
                      ),
                      BoxShadow(
                        blurRadius: 10,
                        color: Colors.pinkAccent.shade100.withOpacity(0.8),
                        offset: Offset(8, 8),
                      )
                    ]),
                child: Text("Get Started",
                    style: GoogleFonts.caveat(
                        color: Colors.brown.shade300,
                        fontSize: clientHeight * 0.055,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          BoxShadow(
                            blurRadius: 4,
                            color: Colors.white.withOpacity(0.3),
                            offset: Offset(-3, -3),
                          ),
                          BoxShadow(
                            blurRadius: 6,
                            color: Colors.pinkAccent.withOpacity(0.4),
                            offset: Offset(5, 5),
                          )
                        ])),
              ),
              onTap: () {
                print("button is clicked");
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        NavigationDesignBMICalculatorGenderPageStateFull()));
              },
            )
          ],
        ),
      ),
    );
  }
}

class NavigationDesignBMICalculatorGenderPageStateFull extends StatefulWidget {
  const NavigationDesignBMICalculatorGenderPageStateFull({super.key});

  @override
  State<NavigationDesignBMICalculatorGenderPageStateFull> createState() =>
      _NavigationDesignBMICalculatorGenderPageStateFullState();
}

class _NavigationDesignBMICalculatorGenderPageStateFullState
    extends State<NavigationDesignBMICalculatorGenderPageStateFull> {
  bool isManGenderSelected = false;
  bool isWomanGenderSelected = false;
  bool isThirdGenderSelected = false;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.sizeOf(context);
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;
    var clientHeight = screenHeight - kToolbarHeight;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Gender Page",
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 231, 193, 206),
      ),
      body: Center(
        child: Container(
          width: screenWidth,
          height: clientHeight,
          alignment: Alignment.center,
          color: Color.fromARGB(255, 249, 228, 235),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            textDirection: TextDirection.ltr,
            children: [
              Text("Select Gender",
                  style: GoogleFonts.caveat(
                      color: Colors.brown.shade300,
                      fontSize: clientHeight * 0.07,
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
              InkWell(
                child: Container(
                  width: screenWidth * 0.7,
                  height: clientHeight * 0.25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 249, 228, 235),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 8,
                          color: Colors.white.withOpacity(0.6),
                          offset: Offset(-6, -6),
                        ),
                        BoxShadow(
                          blurRadius: 8,
                          color: Colors.pinkAccent.shade100.withOpacity(0.6),
                          offset: Offset(6, 6),
                        )
                      ],
                      image: DecorationImage(
                          image: AssetImage("assets/images/man.png"),
                          fit: BoxFit.fill)),
                ),
                onTap: () {
                  setState(() {
                    isManGenderSelected = true;
                    isWomanGenderSelected = false;
                    isThirdGenderSelected = false;
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            NavigationDesignBMICalculatorHeightPageStateFull(
                              isManSelected: isManGenderSelected,
                              isWomanSelected: isWomanGenderSelected,
                              isThirdGenderSelected: isThirdGenderSelected,
                              imagePath: "assets/images/male_vector.png",
                            )));
                  });
                },
              ),
              InkWell(
                child: Container(
                  width: screenWidth * 0.7,
                  height: clientHeight * 0.25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 249, 228, 235),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 8,
                          color: Colors.white.withOpacity(0.6),
                          offset: Offset(-6, -6),
                        ),
                        BoxShadow(
                          blurRadius: 8,
                          color: Colors.pinkAccent.shade100.withOpacity(0.6),
                          offset: Offset(6, 6),
                        )
                      ],
                      image: DecorationImage(
                          image: AssetImage("assets/images/woman.png"),
                          fit: BoxFit.fill)),
                ),
                onTap: () {
                  setState(() {
                    isManGenderSelected = false;
                    isWomanGenderSelected = true;
                    isThirdGenderSelected = false;
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            NavigationDesignBMICalculatorHeightPageStateFull(
                              isManSelected: isManGenderSelected,
                              isWomanSelected: isWomanGenderSelected,
                              isThirdGenderSelected: isThirdGenderSelected,
                              imagePath: "assets/images/female_vector.png",
                            )));
                  });
                },
              ),
              InkWell(
                child: Container(
                  width: screenWidth * 0.7,
                  height: clientHeight * 0.25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 249, 228, 235),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 8,
                          color: Colors.white.withOpacity(0.6),
                          offset: Offset(-6, -6),
                        ),
                        BoxShadow(
                          blurRadius: 8,
                          color: Colors.pinkAccent.shade100.withOpacity(0.6),
                          offset: Offset(6, 6),
                        )
                      ],
                      image: DecorationImage(
                          image: AssetImage("assets/images/transgender.png"),
                          fit: BoxFit.fill)),
                ),
                onTap: () {
                  setState(() {
                    isManGenderSelected = false;
                    isWomanGenderSelected = false;
                    isThirdGenderSelected = true;
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            NavigationDesignBMICalculatorHeightPageStateFull(
                              isManSelected: isManGenderSelected,
                              isWomanSelected: isWomanGenderSelected,
                              isThirdGenderSelected: isThirdGenderSelected,
                              imagePath: "assets/images/transgender_vector.png",
                            )));
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NavigationDesignBMICalculatorHeightPageStateFull extends StatefulWidget {
  const NavigationDesignBMICalculatorHeightPageStateFull(
      {super.key,
      required this.isManSelected,
      required this.isWomanSelected,
      required this.isThirdGenderSelected,
      required this.imagePath});
  final bool isManSelected;
  final bool isWomanSelected;
  final bool isThirdGenderSelected;
  final String imagePath;

  @override
  State<NavigationDesignBMICalculatorHeightPageStateFull> createState() =>
      _NavigationDesignBMICalculatorHeightPageStateFullState();
}

class _NavigationDesignBMICalculatorHeightPageStateFullState
    extends State<NavigationDesignBMICalculatorHeightPageStateFull> {
  double sliderCurrentValue = 0.0;
  double heightCounter = 0.0;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.sizeOf(context);
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;
    var clientHeight = screenHeight - kToolbarHeight;

    String gender;
    if (widget.isManSelected) {
      gender = "Man";
    } else if (widget.isWomanSelected) {
      gender = "Woman";
    } else {
      gender = "Transgender";
    }

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        color: Color.fromARGB(255, 249, 228, 235),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          textDirection: TextDirection.ltr,
          children: [
            Text("Select Your Height",
                style: GoogleFonts.caveat(
                    color: Colors.brown.shade300,
                    fontSize: clientHeight * 0.06,
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

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              textDirection: TextDirection.ltr,
              children: [
                Container(
                  width: screenWidth * 0.6,
                  height: clientHeight * 0.6,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 249, 228, 235),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 8,
                          color: Colors.white.withOpacity(0.6),
                          offset: Offset(-6, -6),
                        ),
                        BoxShadow(
                          blurRadius: 8,
                          color: Colors.pinkAccent.shade100.withOpacity(0.6),
                          offset: Offset(6, 6),
                        )
                      ],
                      image: DecorationImage(
                          image: AssetImage(widget.imagePath),
                          fit: BoxFit.fill)),
                ),
                Container(
                    alignment: Alignment.center,
                    height: clientHeight * 0.6,
                    width: screenWidth * 0.25,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 249, 228, 235),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color:
                                  Colors.pinkAccent.shade100.withOpacity(0.6),
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
                            activeTrackColor: Colors.pinkAccent.shade100,
                            activeTickMarkColor: Colors.pinkAccent.shade100,
                            thumbColor: Colors.pinkAccent,
                            valueIndicatorColor: Colors.pinkAccent.shade100,
                            trackShape: RectangularSliderTrackShape(),
                            valueIndicatorTextStyle: TextStyle(
                              color: Colors.brown.shade400,
                              fontSize: 12,
                            )),
                        child: Slider(
                            value: sliderCurrentValue,
                            max: 280.0,
                            min: 0.0,
                            //    division is used to make steps of slider you can only jump from one step to another
                            divisions: 20,
                            label: sliderCurrentValue.round().toString(),
                            onChanged: (double value1) {
                              setState(() {
                                sliderCurrentValue = value1;
                                heightCounter = sliderCurrentValue;
                              });
                            }),
                      ),
                    ))
              ],
            ),
            // Text('Woman : ${widget.isWomanSelected}'),

            // Text('third : ${widget.isThirdGenderSelected}')

            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    child: Container(
                      width: screenWidth * 0.3,
                      height: clientHeight * 0.07,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 249, 228, 235),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 8,
                            color: Colors.white.withOpacity(0.6),
                            offset: Offset(-6, -6),
                          ),
                          BoxShadow(
                            blurRadius: 8,
                            color: Colors.pinkAccent.shade100.withOpacity(0.6),
                            offset: Offset(6, 6),
                          )
                        ],
                      ),
                      child: Text("Back",
                          style: GoogleFonts.caveat(
                              color: Colors.brown.shade300,
                              fontSize: clientHeight * 0.03,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Colors.white.withOpacity(0.5),
                                  offset: Offset(-4, -4),
                                ),
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Colors.pinkAccent.withOpacity(0.4),
                                  offset: Offset(4, 4),
                                )
                              ])),
                    ),
                    onTap: () {
                      setState(() {
                        Navigator.of(context).pop();
                      });
                    },
                  ),
                  InkWell(
                    child: Container(
                      width: screenWidth * 0.3,
                      height: clientHeight * 0.07,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 249, 228, 235),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 8,
                            color: Colors.white.withOpacity(0.6),
                            offset: Offset(-6, -6),
                          ),
                          BoxShadow(
                            blurRadius: 8,
                            color: Colors.pinkAccent.shade100.withOpacity(0.6),
                            offset: Offset(6, 6),
                          ),
                        ],
                      ),
                      child: Text("Next",
                          style: GoogleFonts.caveat(
                              color: Colors.brown.shade300,
                              fontSize: clientHeight * 0.03,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Colors.white.withOpacity(0.5),
                                  offset: Offset(-4, -4),
                                ),
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Colors.pinkAccent.withOpacity(0.4),
                                  offset: Offset(4, 4),
                                )
                              ])),
                    ),
                    onTap: () {
                      setState(() {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                NavigationDesignBMICalculatorWeightPageStateFull(
                                  gender: gender,
                                  height: heightCounter,
                                )));
                      });
                    },
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}

class NavigationDesignBMICalculatorWeightPageStateFull extends StatefulWidget {
  const NavigationDesignBMICalculatorWeightPageStateFull(
      {super.key, required this.gender, required this.height});
  final String gender;
  final double height;

  @override
  State<NavigationDesignBMICalculatorWeightPageStateFull> createState() =>
      _NavigationDesignBMICalculatorWeightPageStateFullState();
}

class _NavigationDesignBMICalculatorWeightPageStateFullState
    extends State<NavigationDesignBMICalculatorWeightPageStateFull> {
  double weightCounter = 0.0;
  double weight = 0.0;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.sizeOf(context);
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;
    var clientHeight = screenHeight - kToolbarHeight;
    double selectedHeight = widget.height;
    return Scaffold(
      body: Container(
          width: screenWidth,
          height: screenHeight,
          color: Color.fromARGB(255, 249, 228, 235),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            textDirection: TextDirection.ltr,
            children: [
              // Text("Gender : ${widget.gender}"),
              // Text("Height : ${widget.height}"),

              SizedBox(
                height: clientHeight * 0.1,
                child: Text("Select Your Weight",
                    style: GoogleFonts.caveat(
                        color: Colors.brown.shade300,
                        fontSize: clientHeight * 0.06,
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
              ),
              Container(
                width: screenWidth * 0.8,
                height: clientHeight * 0.5,
                color: Color.fromARGB(255, 249, 228, 235),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  textDirection: TextDirection.ltr,
                  children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "$weightCounter",
                            style: GoogleFonts.pacifico(
                              color: Colors.brown.shade300,
                              fontSize: clientHeight * 0.08,
                            ),
                          ),
                          SizedBox(
                            width: screenWidth * 0.02,
                          ),
                          Text(
                            "Kg",
                            style: GoogleFonts.pacifico(
                              color: Colors.brown.shade300,
                              fontSize: clientHeight * 0.03,
                            ),
                          ),
                        ]),
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
                                color: Color.fromARGB(255, 249, 228, 235),
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
                                color: Colors.brown.shade300,
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
                                  color: Color.fromARGB(255, 249, 228, 235),
                                  borderRadius: BorderRadius.circular(360),
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
                                      color: Colors.brown.shade300,
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
              InkWell(
                child: Container(
                  width: screenWidth * 0.8,
                  height: clientHeight * 0.08,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 249, 228, 235),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8,
                        color: Colors.white.withOpacity(0.6),
                        offset: Offset(-6, -6),
                      ),
                      BoxShadow(
                        blurRadius: 8,
                        color: Colors.pinkAccent.shade100.withOpacity(0.6),
                        offset: Offset(6, 6),
                      ),
                    ],
                  ),
                  child: Text("Back",
                      style: GoogleFonts.caveat(
                          color: Colors.brown.shade300,
                          fontSize: clientHeight * 0.04,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Colors.white.withOpacity(0.5),
                              offset: Offset(-4, -4),
                            ),
                            BoxShadow(
                              blurRadius: 4,
                              color: Colors.pinkAccent.withOpacity(0.4),
                              offset: Offset(4, 4),
                            )
                          ])),
                ),
                onTap: () {
                  setState(() {
                    Navigator.of(context).pop();
                  });
                },
              ),

              InkWell(
                child: Container(
                  width: screenWidth * 0.8,
                  height: clientHeight * 0.08,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 249, 228, 235),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8,
                        color: Colors.white.withOpacity(0.6),
                        offset: Offset(-6, -6),
                      ),
                      BoxShadow(
                        blurRadius: 8,
                        color: Colors.pinkAccent.shade100.withOpacity(0.6),
                        offset: Offset(6, 6),
                      ),
                    ],
                  ),
                  child: Text("Next",
                      style: GoogleFonts.caveat(
                          color: Colors.brown.shade300,
                          fontSize: clientHeight * 0.04,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Colors.white.withOpacity(0.5),
                              offset: Offset(-4, -4),
                            ),
                            BoxShadow(
                              blurRadius: 4,
                              color: Colors.pinkAccent.withOpacity(0.4),
                              offset: Offset(4, 4),
                            )
                          ])),
                ),
                onTap: () {
                  setState(() {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            NavigationDesignBMICalculatorAgePageStateFull(
                              gender: widget.gender,
                              height: selectedHeight,
                              weight: weightCounter,
                            )));
                  });
                },
              ),
            ],
          )),
    );
  }
}

class NavigationDesignBMICalculatorAgePageStateFull extends StatefulWidget {
  const NavigationDesignBMICalculatorAgePageStateFull(
      {super.key,
      required this.gender,
      required this.height,
      required this.weight});
  final String gender;
  final double height;
  final double weight;

  @override
  State<NavigationDesignBMICalculatorAgePageStateFull> createState() =>
      _NavigationDesignBMICalculatorAgePageStateFullState();
}

class _NavigationDesignBMICalculatorAgePageStateFullState
    extends State<NavigationDesignBMICalculatorAgePageStateFull> {
  double ageCounter = 0.0;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.sizeOf(context);
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;
    var clientHeight = screenHeight - kToolbarHeight;
    String finalGender = widget.gender;
    double finalHeight = widget.height;
    double finalWeight = widget.weight;
    return Scaffold(
      body: Container(
          width: screenWidth,
          height: screenHeight,
          color: Color.fromARGB(255, 249, 228, 235),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            textDirection: TextDirection.ltr,
            children: [
              SizedBox(
                height: clientHeight * 0.1,
                child: Text("Select Your Age",
                    style: GoogleFonts.caveat(
                        color: Colors.brown.shade300,
                        fontSize: clientHeight * 0.06,
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
              ),
              Container(
                width: screenWidth * 0.8,
                height: clientHeight * 0.5,
                color: Color.fromARGB(255, 249, 228, 235),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  textDirection: TextDirection.ltr,
                  children: [
                    Text(
                      "$ageCounter",
                      style: GoogleFonts.pacifico(
                        color: Colors.brown.shade300,
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
                                color: Color.fromARGB(255, 249, 228, 235),
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
                                color: Colors.brown.shade300,
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
                                  color: Color.fromARGB(255, 249, 228, 235),
                                  borderRadius: BorderRadius.circular(360),
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
                                      color: Colors.brown.shade300,
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
              InkWell(
                child: Container(
                  width: screenWidth * 0.8,
                  height: clientHeight * 0.08,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 249, 228, 235),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8,
                        color: Colors.white.withOpacity(0.6),
                        offset: Offset(-6, -6),
                      ),
                      BoxShadow(
                        blurRadius: 8,
                        color: Colors.pinkAccent.shade100.withOpacity(0.6),
                        offset: Offset(6, 6),
                      ),
                    ],
                  ),
                  child: Text("Calculate BMI",
                      style: GoogleFonts.caveat(
                          color: Colors.brown.shade300,
                          fontSize: clientHeight * 0.04,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Colors.white.withOpacity(0.5),
                              offset: Offset(-4, -4),
                            ),
                            BoxShadow(
                              blurRadius: 4,
                              color: Colors.pinkAccent.withOpacity(0.4),
                              offset: Offset(4, 4),
                            )
                          ])),
                ),
                onTap: () {
                  setState(() {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          NavigationDesignBMICalculatorResultPageStateFull(
                              gender: finalGender,
                              height: finalHeight,
                              weight: finalWeight,
                              age: ageCounter.toInt()),
                    ));
                  });
                },
              ),
              InkWell(
                child: Container(
                  width: screenWidth * 0.8,
                  height: clientHeight * 0.08,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 249, 228, 235),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8,
                        color: Colors.white.withOpacity(0.6),
                        offset: Offset(-6, -6),
                      ),
                      BoxShadow(
                        blurRadius: 8,
                        color: Colors.pinkAccent.shade100.withOpacity(0.6),
                        offset: Offset(6, 6),
                      ),
                    ],
                  ),
                  child: Text("Back",
                      style: GoogleFonts.caveat(
                          color: Colors.brown.shade300,
                          fontSize: clientHeight * 0.04,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Colors.white.withOpacity(0.5),
                              offset: Offset(-4, -4),
                            ),
                            BoxShadow(
                              blurRadius: 4,
                              color: Colors.pinkAccent.withOpacity(0.4),
                              offset: Offset(4, 4),
                            )
                          ])),
                ),
                onTap: () {
                  setState(() {
                    Navigator.of(context).pop();
                  });
                },
              ),
            ],
          )),
    );
  }
}

class NavigationDesignBMICalculatorResultPageStateFull extends StatefulWidget {
  const NavigationDesignBMICalculatorResultPageStateFull(
      {super.key,
      required this.gender,
      required this.height,
      required this.weight,
      required this.age});
  final String gender;
  final double height;
  final double weight;
  final int age;

  @override
  State<NavigationDesignBMICalculatorResultPageStateFull> createState() =>
      _NavigationDesignBMICalculatorResultPageStateFullState();
}

class _NavigationDesignBMICalculatorResultPageStateFullState
    extends State<NavigationDesignBMICalculatorResultPageStateFull> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.sizeOf(context);
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;
    var clientHeight = screenHeight - kToolbarHeight;

    String genderResult = widget.gender;
    double heightResult = widget.height;
    double weightResult = widget.weight;
    int ageResult = widget.age;
    double calculatedBMI = 0.0;
    String weightDescription = "";
    String imagePath = "";
    String suggestionsForGoodHealth;
    if (genderResult == "Transgender") {
      genderResult = "X";
    }

    if (genderResult == "Man") {
      calculatedBMI = weightResult / ((heightResult * heightResult) * 10000);
      if (calculatedBMI < 18.5) {
        weightDescription = "Severely Under Weight";
        imagePath = "assets/images/severely_underweight_man.png";
        suggestionsForGoodHealth = """ Exercise Daily
        Choose food with lots of nutrients """;
      } else if (calculatedBMI >= 18.5 && calculatedBMI <= 29.9) {
        weightDescription = "Normal Weight";
        imagePath = "assets/images/normal_weight_man.png";
        suggestionsForGoodHealth = """Good Health 
        Try to maintain your BMI """;
      } else if (calculatedBMI >= 30 && calculatedBMI <= 34.9) {
        weightDescription = "Obese Weight";
        imagePath = "assets/images/obese_weight_man.png";
        suggestionsForGoodHealth = """Join a Gym
        Exercise Daily 
        Choosing healthier foods
        Reduced calorie diet""";
      } else if (calculatedBMI >= 35) {
        weightDescription = "Severely Weight";
        imagePath = "assets/images/severely_obese_man.png";
        suggestionsForGoodHealth = """Start Running on daily basis
        Join a Gym
        Exercise Daily 
        Choosing healthier foods
        Reduced calorie diet  """;
      }
    } else if (genderResult == "Woman") {
      calculatedBMI = weightResult / ((heightResult * heightResult) * 10000);
      if (calculatedBMI < 18.5) {
        weightDescription = "Severely Under Weight";
        imagePath = "assets/images/under_weight_woman.png";
        suggestionsForGoodHealth = """ Exercise Daily
        Choose food with lots of nutrients """;
      } else if (calculatedBMI >= 18.5 && calculatedBMI <= 29.9) {
        weightDescription = "Normal Weight";
        imagePath = "assets/images/normal_weight_woman.png";
        suggestionsForGoodHealth = """Good Health 
        Try to maintain your BMI """;
      } else if (calculatedBMI >= 30 && calculatedBMI <= 34.9) {
        weightDescription = "Obese Weight";
        imagePath = "assets/images/obese_female.png";
        suggestionsForGoodHealth = """Join a Gym
        Exercise Daily 
        Choosing healthier foods
        Reduced calorie diet""";
      } else if (calculatedBMI >= 35) {
        weightDescription = "Severely Weight";
        imagePath = "assets/images/severely_obese_female.png";
        suggestionsForGoodHealth = """Start Running on daily basis
        Join a Gym
        Exercise Daily 
        Choosing healthier foods
        Reduced calorie diet  """;
      }
    } else if (genderResult == "X") {
      calculatedBMI = weightResult / ((heightResult * heightResult) * 10000);
      genderResult == "X";
      if (calculatedBMI < 18.5) {
        weightDescription = "Severely Under Weight";
        imagePath = "assets/images/severely_underweight_transgender.png";
        suggestionsForGoodHealth = """ Exercise Daily
        Choose food with lots of nutrients """;
      } else if (calculatedBMI >= 18.5 && calculatedBMI <= 29.9) {
        weightDescription = "Normal Weight";
        imagePath = "assets/images/normal_weight_transgender.png";
        suggestionsForGoodHealth = """Good Health 
        Try to maintain your BMI """;
      } else if (calculatedBMI >= 30 && calculatedBMI <= 34.9) {
        weightDescription = "Obese Weight";
        imagePath = "assets/images/obese_transgender.png";
        suggestionsForGoodHealth = """Join a Gym
        Exercise Daily 
        Choosing healthier foods
        Reduced calorie diet""";
      } else if (calculatedBMI >= 35) {
        weightDescription = "Severely Weight";
        imagePath = "assets/images/severely_obese_transgender.png";
        suggestionsForGoodHealth = """Start Running on daily basis
        Join a Gym
        Exercise Daily 
        Choosing healthier foods
        Reduced calorie diet  """;
      }
    }
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 249, 228, 235),
        width: screenWidth,
        height: screenHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          textDirection: TextDirection.ltr,
          children: [
            Container(
              width: screenWidth * 0.85,
              height: clientHeight * 0.7,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 249, 228, 235),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 8,
                    color: Colors.white.withOpacity(0.6),
                    offset: Offset(-6, -6),
                  ),
                  BoxShadow(
                    blurRadius: 8,
                    color: Colors.pinkAccent.shade100.withOpacity(0.6),
                    offset: Offset(6, 6),
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: screenWidth * 0.4,
                    // height: clientHeight * 0.7,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imagePath), fit: BoxFit.fill)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    textDirection: TextDirection.ltr,
                    children: [
                      Text("Gender : $genderResult",
                          style: GoogleFonts.caveat(
                              color: Colors.brown.shade300,
                              fontSize: clientHeight * 0.03,
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
                      Text("Age : $ageResult",
                          style: GoogleFonts.caveat(
                              color: Colors.brown.shade300,
                              fontSize: clientHeight * 0.03,
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
                      Text("Height : $heightResult",
                          style: GoogleFonts.caveat(
                              color: Colors.brown.shade300,
                              fontSize: clientHeight * 0.03,
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
                      Text("Weight : $weightResult",
                          style: GoogleFonts.caveat(
                              color: Colors.brown.shade300,
                              fontSize: clientHeight * 0.03,
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
                      Text("BMI : ${calculatedBMI.toString().substring(0, 5)}",
                          style: GoogleFonts.caveat(
                              color: Colors.brown.shade300,
                              fontSize: clientHeight * 0.03,
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
                    ],
                  ),
                ],
              ),
            ),
            InkWell(
              child: Container(
                width: screenWidth * 0.8,
                height: clientHeight * 0.08,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 249, 228, 235),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 8,
                      color: Colors.white.withOpacity(0.6),
                      offset: Offset(-6, -6),
                    ),
                    BoxShadow(
                      blurRadius: 8,
                      color: Colors.pinkAccent.shade100.withOpacity(0.6),
                      offset: Offset(6, 6),
                    ),
                  ],
                ),
                child: Text("Back",
                    style: GoogleFonts.caveat(
                        color: Colors.brown.shade300,
                        fontSize: clientHeight * 0.04,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          BoxShadow(
                            blurRadius: 4,
                            color: Colors.white.withOpacity(0.5),
                            offset: Offset(-4, -4),
                          ),
                          BoxShadow(
                            blurRadius: 4,
                            color: Colors.pinkAccent.withOpacity(0.4),
                            offset: Offset(4, 4),
                          )
                        ])),
              ),
              onTap: () {
                setState(() {
                  Navigator.of(context).pop();
                });
              },
            ),
            InkWell(
              child: Container(
                width: screenWidth * 0.8,
                height: clientHeight * 0.08,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 249, 228, 235),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 8,
                      color: Colors.white.withOpacity(0.6),
                      offset: Offset(-6, -6),
                    ),
                    BoxShadow(
                      blurRadius: 8,
                      color: Colors.pinkAccent.shade100.withOpacity(0.6),
                      offset: Offset(6, 6),
                    ),
                  ],
                ),
                child: Text("Go To Home Page",
                    style: GoogleFonts.caveat(
                        color: Colors.brown.shade300,
                        fontSize: clientHeight * 0.04,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          BoxShadow(
                            blurRadius: 4,
                            color: Colors.white.withOpacity(0.5),
                            offset: Offset(-4, -4),
                          ),
                          BoxShadow(
                            blurRadius: 4,
                            color: Colors.pinkAccent.withOpacity(0.4),
                            offset: Offset(4, 4),
                          )
                        ])),
              ),
              onTap: () {
                setState(() {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        NavigationDesignBMICalculatorWelcomePage(),
                  ));
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
