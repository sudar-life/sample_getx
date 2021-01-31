import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_getx/src/controller/simple_state_controller.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({Key key}) : super(key: key);

  Widget _button(context) {
    return RaisedButton(
      child: Text("+", style: TextStyle(fontSize: 30)),
      onPressed: () {
        Provider.of<SimpleStateControllerWithProvider>(context, listen: false)
            .increment();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Provider", style: TextStyle(fontSize: 30)),
          Consumer<SimpleStateControllerWithProvider>(
            builder: (_, snapshot, child) {
              return Text(snapshot.count.toString(),
                  style: TextStyle(fontSize: 50));
            },
          ),
          // RaisedButton(
          //   child: Text("+", style: TextStyle(fontSize: 30)),
          //   onPressed: () {
          //     Provider.of<SimpleStateControllerWithProvider>(context,
          //             listen: false)
          //         .increment();
          //   },
          // ),
          _button(context),
        ],
      ),
    );
  }
}
