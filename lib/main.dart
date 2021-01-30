import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_getx/src/home.dart';
import 'package:sample_getx/src/page/named/first.dart';
import 'package:sample_getx/src/page/named/second.dart';
import 'package:sample_getx/src/page/normal/first.dart';
import 'package:sample_getx/src/page/normal/second.dart';
import 'package:sample_getx/src/page/normal/third.dart';
import 'package:sample_getx/src/page/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: Home(),
      initialRoute: '/',
      //기본 route관리
      routes: {
        '/': (context) => Home(),
        '/first': (context) => FirstPage(),
        '/second': (context) => SecondPage(),
        '/third': (context) => ThirdPage(),
      },
      //getx 라우트 관리
      getPages: [
        GetPage(name: '/', page: () => Home()),
        GetPage(
            name: '/first-name',
            page: () => FirstNamedPage(),
            transition: Transition.fadeIn),
        GetPage(
            name: '/second-name',
            page: () => SecondNamedPage(),
            transition: Transition.fadeIn),
        GetPage(name: '/user/:uid', page: () => UserInfoPage()),
      ],
    );
  }
}
