import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfoliowebapp/aboutus/about-us.dart';

import 'Main Content/Heading.dart';
import 'Main Content/MainContent.dart';
import 'Main Content/footer.dart';
import 'Main Content/offers.dart';
import 'Main Content/offers2.dart';
import 'navBar/navBar.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      //  fontFamily: "GreatVibes",
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      getPages: [
        GetPage(name:'/aboutUs', page: ()=> AboutUs()),


      ],
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(


        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              NavBar(),
              LandingPage(),
              Heading(),
              Offers(),
              Offers2(),
              Footer(),

            ],
          ),
        ),
      )
    );
  }
}
