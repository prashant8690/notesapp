import 'package:flutter/material.dart';

import 'custom_box.dart';

List<ModelClass> list = [
  ModelClass(
    name: "Prince",
    surName: "Dhameliya",
    fatherName: "Sureshbhai",
    hobby: "Code",
  ),
  ModelClass(
    name: "Prashant",
    surName: "Donga",
    fatherName: "Dineshbhai",
    hobby: "Accounting",
  ),
  ModelClass(
    name: "Meet",
    surName: "Dhameliya",
    fatherName: "Sureshbhai",
    hobby: "Code",
  ),
  ModelClass(
    name: "Chirag",
    surName: "Vora",
    fatherName: "VAsanbhai",
    hobby: "Code",
  ),
];

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: itemList(),
    );
  }

  AppBar buildAppBar() {
    return AppBar();
  }

  ListView itemList() {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return CustomBox(
          modelClass: list[index],
        );
      },
    );
  }
}
