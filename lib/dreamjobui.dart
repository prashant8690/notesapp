import 'package:dreamjob/uiux%20designer.dart';
import 'package:flutter/material.dart';

import 'designeruiux.dart';

class DreamJobUi extends StatefulWidget {
  const DreamJobUi({Key? key}) : super(key: key);

  @override
  State<DreamJobUi> createState() => _DreamJobUiState();
}

class _DreamJobUiState extends State<DreamJobUi> {
  Map<int, dynamic> field = {
    0: {"name": "IT", "image": "assets/image/computing.png"},
    1: {"name": "Science", "image": "assets/image/atom.png"},
    2: {"name": "Beauty", "image": "assets/image/salon.png"},
    3: {"name": "Accounting", "image": "assets/image/accounting.png"}
  };
  Map<int, dynamic> job = {
    0: {"name": "UI/UX\nDesigner", "place": "4 Job Opportunity"},
    1: {"name": "IOS\nDeveloper", "place": "13Job Opportunity"},
    2: {"name": "Flutter\nDeveloper", "place": "24 Job Opportunity"},
  };
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 667,
                color: Colors.white,
              ),
              Container(
                height: 170,
                decoration: const BoxDecoration(
                  color: Color(0xff5051ba),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Icon(
                        Icons.apps,
                        color: Colors.white,
                        size: 30,
                      ),
                      CircleAvatar(
                        radius: 15,
                        backgroundImage:
                            AssetImage("assets/image/bussiness-man.png"),
                        backgroundColor: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 100,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 180,
                        width: 295,
                        decoration: const BoxDecoration(
                          color: Color(0xfffce9d1),
                          // borderRadius: BorderRadius.only(
                          //   topRight: Radius.circular(50),
                          //   bottomRight: Radius.circular(50),
                          //   topLeft: Radius.circular(50),
                          // ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(
                                height: 60,
                              ),
                              Text(
                                "Welcome,",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Find your\ndream Job!",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 29,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        right: -11,
                        top: -20,
                        bottom: 100,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 60,
                        ),
                      ),
                      const Positioned(
                        right: 0,
                        top: -7,
                        bottom: 120,
                        child: CircleAvatar(
                          backgroundColor: Color(0xfffadf8f),
                          radius: 42,
                        ),
                      ),
                      const Positioned(
                        right: 24,
                        top: 68,
                        child: CircleAvatar(
                          backgroundColor: Color(0xfff097a8),
                          radius: 15,
                        ),
                      ),
                      const Positioned(
                        right: 85,
                        top: 20,
                        child: CircleAvatar(
                          backgroundColor: Color(0xff5051ba),
                          radius: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  color: Color(0xfffce9d1),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 2),
                    child: Container(
                      height: 386,
                      width: 375,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(70),
                          )),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 30, left: 25, right: 25),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Explore Categories",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Spacer(),
                                Icon(Icons.more_horiz)
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              height: 130,
                              child: ListView.builder(
                                clipBehavior: Clip.none,
                                itemCount: field.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        selectedindex = index;
                                        setState(() {});
                                      },
                                      child: selectedindex == index
                                          ? Container(
                                              width: 90,
                                              decoration: const BoxDecoration(
                                                  color: Color(0xff5051ba),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(44))),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 20),
                                                child: Column(
                                                  children: [
                                                    CircleAvatar(
                                                      backgroundColor:
                                                          Color(0xffffffff),
                                                      radius: 23,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Image(
                                                          image: AssetImage(
                                                              field[index]
                                                                  ["image"]),
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 15,
                                                    ),
                                                    Text(
                                                      field[index]["name"],
                                                      style: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          : Container(
                                              width: 90,
                                              decoration: const BoxDecoration(
                                                  color: Color(0xfff6f5fe),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(44))),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 20),
                                                child: Column(
                                                  children: [
                                                    CircleAvatar(
                                                      backgroundColor:
                                                          Color(0xffffffff),
                                                      radius: 25,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Image(
                                                          image: AssetImage(
                                                              field[index]
                                                                  ["image"]),
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 15,
                                                    ),
                                                    Text(
                                                      field[index]["name"],
                                                      style: const TextStyle(
                                                          fontSize: 15),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Popular search",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Spacer(),
                                Icon(Icons.more_horiz)
                              ],
                            ),
                            SizedBox(
                              height: 170,
                              child: ListView.builder(
                                clipBehavior: Clip.none,
                                itemCount: job.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return const UiUxDesigner();
                                            },
                                          ),
                                        );
                                      },
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(25),
                                        ),
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: 150,
                                              decoration: const BoxDecoration(
                                                color: Color(0xfff6f5fe),
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(25),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const SizedBox(
                                                      height: 80,
                                                    ),
                                                    Text(
                                                      job[index]["name"],
                                                      style: const TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 16),
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    Text(
                                                      job[index]["place"],
                                                      style: const TextStyle(
                                                          color: Colors.black87,
                                                          fontSize: 12),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              right: -15,
                                              bottom: 90,
                                              child: CircleAvatar(
                                                backgroundColor:
                                                    Color(0xff5051ba),
                                                radius: 45,
                                              ),
                                            ),
                                            Positioned(
                                              right: -15,
                                              bottom: 108,
                                              child: CircleAvatar(
                                                backgroundColor:
                                                    Color(0xfffadf8f),
                                                radius: 35,
                                              ),
                                            ),
                                            Positioned(
                                              right: 0,
                                              left: -18,
                                              top: 17,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.white,
                                                radius: 18,
                                              ),
                                            ),
                                            Positioned(
                                              right: 20,
                                              top: 55,
                                              child: CircleAvatar(
                                                backgroundColor:
                                                    Color(0xfff097a8),
                                                radius: 10,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
