import 'package:flutter/material.dart';
import 'package:flutter_body_mass_index_calculator/bmi_neumorphic_design.dart';
import 'package:flutter_body_mass_index_calculator/navigation_design_bmi_calculator.dart';
import 'package:flutter_body_mass_index_calculator/simple_bmi_calculator_design.dart';
import 'package:flutter_body_mass_index_calculator/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
      // const MyHomePage(
      //   title: "Bmi Calculator",
      // ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[NavigationDesignBMICalculatorWelcomePage()],
        ),
      ),
    );
  }
}
