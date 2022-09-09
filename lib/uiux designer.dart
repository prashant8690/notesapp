// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Uiux_Designer extends StatefulWidget {
  const Uiux_Designer({Key? key}) : super(key: key);

  @override
  State<Uiux_Designer> createState() => _Uiux_DesignerState();
}

class _Uiux_DesignerState extends State<Uiux_Designer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 667,
                color: Colors.white,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 200,
                    width: 375,
                    decoration: const BoxDecoration(
                      color: Color(0xfffce9d1),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(60),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back_ios_new),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "UI/UX\nDesigner",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "4 Job Opportunity",
                            style:
                                TextStyle(color: Colors.black87, fontSize: 17),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Positioned(
                    right: -9,
                    bottom: 110,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 60,
                    ),
                  ),
                  const Positioned(
                    right: 0,
                    top: -35,
                    bottom: 120,
                    child: CircleAvatar(
                      backgroundColor: Color(0xfffadf8f),
                      radius: 40,
                    ),
                  ),
                  Positioned(
                    right: 28,
                    top: 75,
                    child: const CircleAvatar(
                      backgroundColor: Color(0xfff097a8),
                    ),
                  ),
                  Positioned(
                    right: 94,
                    top: 20,
                    child: CircleAvatar(
                      backgroundColor: Color(0xff5051ba),
                      radius: 35,
                    ),
                  ),
                  Positioned(
                    right: 50,
                    bottom: -25,
                    child: Container(
                      height: 50,
                      width: 50,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  color: Color(0xfffce9d1),
                  child: Container(
                    height: 467,
                    width: 375,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
