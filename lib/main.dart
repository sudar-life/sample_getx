import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_getx/src/final_page.dart';
import 'package:sample_getx/src/first_page.dart';
import 'package:sample_getx/src/home.dart';
import 'package:sample_getx/src/second_page.dart';
import 'package:sample_getx/src/unknown_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // GetX Version
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialRoute: "/",
      defaultTransition: Transition.downToUp,
      unknownRoute: GetPage(name: "/notFound", page: () => UnknownPage()),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      getPages: [
        GetPage(name: "/", page: () => Home()),
        GetPage(name: "/firstPage", page: () => FirstPage()),
        GetPage(name: "/secondPage", page: () => SecondPage()),
        GetPage(name: "/finalPage/:uid", page: () => FinalPage()),
      ],
    );
    // Normal Version
    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   initialRoute: "/",
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //     visualDensity: VisualDensity.adaptivePlatformDensity,
    //   ),
    //   routes: {
    //     '/': (context) => Home(),
    //     '/firstPage': (context) => FirstPage(),
    //     '/secondPage': (context) => SecondPage(),
    //   },
    // );
  }
}
