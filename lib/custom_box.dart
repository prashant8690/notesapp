import 'package:dreamjob/page2.dart';
import 'package:flutter/material.dart';

class ModelClass {
  final String name;
  final String surName;
  final String fatherName;
  final String hobby;

  ModelClass(
      {required this.name,
      required this.surName,
      required this.fatherName,
      required this.hobby});
}

class CustomBox extends StatefulWidget {
  final ModelClass modelClass;

  const CustomBox({super.key, required this.modelClass});

  @override
  State<CustomBox> createState() => _CustomBoxState();
}

class _CustomBoxState extends State<CustomBox> {
  bool isColorRed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isColorRed = !isColorRed;
        setState(() {});
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return Page2(modelClass: widget.modelClass);
          },
        ));
      },
      child: Container(
        color: isColorRed ? Colors.red : Colors.blue,
        margin: EdgeInsets.all(10),
        child: Center(
          child: Text(
            widget.modelClass.name,
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
