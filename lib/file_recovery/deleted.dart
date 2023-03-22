// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_constructors_in_immutables, sized_box_for_whitespace, unused_import, avoid_unnecessary_containers, non_constant_identifier_names, deprecated_member_use, duplicate_ignore

import 'package:flutter/material.dart';

import 'file_recovery.dart';

class deleted extends StatefulWidget {
  deleted({Key? key}) : super(key: key);

  @override
  State<deleted> createState() => _deletedState();
}

class _deletedState extends State<deleted> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.black,
              leading: IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => file_recovery()));
                  },
                  icon: Icon(Icons.arrow_back)),
              title: Text(
                "Deleted Files",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              bottom: TabBar(
                // ignore: prefer_const_literals_to_create_immutables
                tabs: [
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "Photos",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Text(
                            "(0)",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "Videos",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Text(
                            "(0)",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "Audios",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Text(
                            "(0)",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // ignore: prefer_const_literals_to_create_immutables
            body: TabBarView(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Text(
                        "⚠ Please do not uninstall the File Recovery-All Recovery to avoid file loss",
                        style: TextStyle(
                            color: Color.fromARGB(255, 130, 123, 123),
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      height: 180,
                      width: 180,
                      child: Image(
                        image: AssetImage("assets/emotybox.png"),
                        color: Colors.black,
                        colorBlendMode: BlendMode.softLight,
                      ),
                    ),
                    Text(
                      "No files have recovered yet~",
                      style: TextStyle(
                          color: Color.fromARGB(255, 130, 123, 123),
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    // ignore: deprecated_member_use
                    Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.7,
                      // ignore: deprecated_member_use
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          shape: StadiumBorder(
                            side: BorderSide(
                                color: Color.fromARGB(255, 120, 116, 116),
                                width: 2),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, "/photorecovery");
                        },
                        child: Text(
                          "Scan deleted photos",
                          style: TextStyle(
                              color: Color.fromARGB(255, 208, 202, 202),
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Text(
                        "⚠ Please do not uninstall the File Recovery-All Recovery to avoid file loss",
                        style: TextStyle(
                            color: Color.fromARGB(255, 130, 123, 123),
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      height: 180,
                      width: 180,
                      child: Image(
                        image: AssetImage("assets/emotybox.png"),
                        color: Colors.black,
                        colorBlendMode: BlendMode.softLight,
                      ),
                    ),
                    Text(
                      "No files have recovered yet~",
                      style: TextStyle(
                          color: Color.fromARGB(255, 130, 123, 123),
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    // ignore: deprecated_member_use
                    Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.7,
                      // ignore: deprecated_member_use
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          shape: StadiumBorder(
                            side: BorderSide(
                                color: Color.fromARGB(255, 120, 116, 116),
                                width: 2),
                          ),
                        ),
                        // color: Colors.transparent,

                        onPressed: () {
                          Navigator.pushNamed(context, "/video_recovery");
                        },
                        child: Text(
                          "Scan deleted videos",
                          style: TextStyle(
                              color: Color.fromARGB(255, 208, 202, 202),
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Text(
                        "⚠ Please do not uninstall the File Recovery-All Recovery to avoid file loss",
                        style: TextStyle(
                            color: Color.fromARGB(255, 130, 123, 123),
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      height: 180,
                      width: 180,
                      child: Image(
                        image: AssetImage("assets/emotybox.png"),
                        color: Colors.black,
                        colorBlendMode: BlendMode.softLight,
                      ),
                    ),
                    Text(
                      "No files have recovered yet~",
                      style: TextStyle(
                          color: Color.fromARGB(255, 130, 123, 123),
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    // ignore: deprecated_member_use
                    Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.7,
                      // ignore: deprecated_member_use
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          shape: StadiumBorder(
                            side: BorderSide(
                                color: Color.fromARGB(255, 120, 116, 116),
                                width: 2),
                          ),
                        ),
                        // color: Colors.transparent,

                        onPressed: () {
                          Navigator.pushNamed(context, "/audio_recovery");
                        },
                        child: Text(
                          "Scan deleted audios",
                          style: TextStyle(
                              color: Color.fromARGB(255, 208, 202, 202),
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
