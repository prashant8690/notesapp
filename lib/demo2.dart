import 'package:dreamjob/custom_box2.dart';
import 'package:flutter/material.dart';

class Demo2 extends StatefulWidget {
  const Demo2({
    Key? key,
  }) : super(key: key);

  @override
  State<Demo2> createState() => _Demo2State();
}

class _Demo2State extends State<Demo2> {
  List<int> list2 = [11, 22, 33, 44, 55];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: list2.length,
        itemBuilder: (context, index) {
          return CustomBox2(
            list2: list2[index],
          );
        },
      ),
    );
  }
}
