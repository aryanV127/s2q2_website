import 'package:flutter/material.dart';
import 'package:s2q2_website/AboutUs/about_us.dart';
import 'package:s2q2_website/AboutUs/myslider.dart';
import 'package:s2q2_website/Careers/career.dart';
import 'package:s2q2_website/LandingPage/LandingPage.dart';
import 'package:s2q2_website/Navbar/Navbar.dart';
import 'package:s2q2_website/TechStack/tech_stack.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 's2q2 website',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Montserrat"),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromARGB(255, 17, 154, 234),
                Color.fromARGB(255, 8, 89, 137),
                Color.fromRGBO(36, 11, 54, 1.0),
              ]),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Navbar(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: LandingPage(),
              ),
              const AboutUs(),
              const MySlider(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: TechStack(),
              ),
              Careers(),
            ],
          ),
        ),
      ),
    );
  }
}
