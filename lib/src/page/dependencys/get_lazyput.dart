import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_getx/src/controller/dependency_controller.dart';

class GetLazyPut extends StatefulWidget {
  const GetLazyPut({Key key}) : super(key: key);

  @override
  _GetLazyPutState createState() => _GetLazyPutState();
}

class _GetLazyPutState extends State<GetLazyPut> {
  bool ck = false;
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 2), (_) {
      setState(() {
        ck = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (ck) {
      return GetBuilder<DependencyController>(
        builder: (_) {
          return Scaffold(
            appBar: AppBar(),
          );
        },
      );
    } else {
      return Scaffold(
        appBar: AppBar(),
      );
    }
  }
}
