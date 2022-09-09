import 'package:flutter/material.dart';

class CustomBox2 extends StatefulWidget {
  final int list2;
  const CustomBox2({Key? key, required this.list2}) : super(key: key);

  @override
  State<CustomBox2> createState() => _CustomBox2State();
}

class _CustomBox2State extends State<CustomBox2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      color: Colors.blue,
      child: Text(
        widget.list2.toString(),
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
