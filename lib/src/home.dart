import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_getx/src/page/next_page.dart';
import 'package:sample_getx/src/page/normal/first.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("라우트 관리"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("단순 페이지 라우팅"),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => FirstPage(),
                ));
                // Get.to(FirstPage());
              },
            ),
            RaisedButton(
              child: Text("named 페이지 라우팅"),
              onPressed: () {
                Navigator.of(context).pushNamed("/first-name");
                // Get.toNamed("first-name");
              },
            ),
            RaisedButton(
              child: Text("라우트에 데이터 보내기 : 개남"),
              onPressed: () {
                Get.to(NextPage(), arguments: "개남");
                // Get.to(NextPage(), arguments: 5);
                // Get.to(NextPage(), arguments: {"name": "개남", "age": 22});
                // Get.to(NextPage(), arguments: User(name: "개남", age: 22));
                // Get.toNamed("/next", arguments: "개남");
              },
            ),
            RaisedButton(
              child: Text("동적링크 전송"),
              onPressed: () {
                Get.toNamed("/user/1424?name=개남&age=22");
              },
            ),
          ],
        ),
      ),
    );
  }
}

class User {
  String name;
  double age;
  User({this.name, this.age});
}
