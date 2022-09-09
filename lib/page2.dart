import 'package:dreamjob/custom_box.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  final ModelClass modelClass;
  const Page2({Key? key, required this.modelClass}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(modelClass.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              modelClass.fatherName,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              modelClass.hobby,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              modelClass.surName,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
