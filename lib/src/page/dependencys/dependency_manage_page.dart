import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_getx/src/controller/dependency_controller.dart';
import 'package:sample_getx/src/page/dependencys/get_create.dart';
import 'package:sample_getx/src/page/dependencys/get_lazyput.dart';
import 'package:sample_getx/src/page/dependencys/get_put.dart';
import 'package:sample_getx/src/page/dependencys/get_putasync.dart';

class DependencyManagePage extends StatelessWidget {
  const DependencyManagePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("종속성 상태관리"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("Get.put"),
              onPressed: () {
                Get.to(
                  GetPut(),
                  binding: BindingsBuilder(() {
                    Get.put(DependencyController());
                  }),
                );
              },
            ),
            RaisedButton(
              child: Text("Get.lazyPut"),
              onPressed: () {
                Get.to(
                  GetLazyPut(),
                  binding: BindingsBuilder(() {
                    Get.lazyPut<DependencyController>(
                        () => DependencyController());
                  }),
                );
              },
            ),
            RaisedButton(
              child: Text("Get.putAsync"),
              onPressed: () {
                Get.to(
                  GetPutAsync(),
                  binding: BindingsBuilder(() {
                    Get.putAsync<DependencyController>(() async {
                      await Future.delayed(Duration(seconds: 5));
                      return DependencyController();
                    });
                  }),
                );
              },
            ),
            // RaisedButton(
            //   child: Text("Get.create"),
            //   onPressed: () {
            //     Get.to(
            //       GetCreate(),
            //       binding: BindingsBuilder(() {
            //         Get.create<DependencyController>(
            //             () => DependencyController());
            //       }),
            //     );
            //   },
            // )
          ],
        ),
      ),
    );
  }
}
