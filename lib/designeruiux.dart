import 'package:flutter/material.dart';

class UiUxDesigner extends StatelessWidget {
  const UiUxDesigner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.white,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.orange.shade50,
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(50))),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Icon(
                                  Icons.arrow_back_ios_sharp,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            const Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                "Ui/Ux\nDesigner",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 32),
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                "4 Job Opportunity",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17,
                                    color: Colors.black54),
                              ),
                            ),
                          ],
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
                          right: 10,
                          top: -30,
                          bottom: 120,
                          child: CircleAvatar(
                            backgroundColor: Color(0xfffadf8f),
                            radius: 40,
                          ),
                        ),
                        const Positioned(
                          right: 28,
                          top: 75,
                          child: CircleAvatar(
                            backgroundColor: Color(0xfff097a8),
                          ),
                        ),
                        const Positioned(
                          right: 94,
                          top: 20,
                          child: CircleAvatar(
                            backgroundColor: Color(0xff5051ba),
                            radius: 35,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height -
                      200 -
                      MediaQuery.of(context).padding.top,
                  color: Colors.orange.shade50,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                      ),
                    ),
                    child: ListView.builder(
                      // clipBehavior: Clip.none,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          child: Container(
                            margin: EdgeInsets.only(top: 30),
                            height: 100,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade50,
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 175,
              right: 50,
              child: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    )),
                child: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
