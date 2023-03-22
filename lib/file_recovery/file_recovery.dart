// ignore_for_file: unused_import, camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_final_fields, unused_field, unused_element, non_constant_identifier_names, avoid_types_as_parameter_names, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';

import '../setting/feedback.dart';
import '../setting/setting_page.dart';

class file_recovery extends StatefulWidget {
  file_recovery({Key? key}) : super(key: key);

  @override
  State<file_recovery> createState() => _file_recoveryState();
}

class _file_recoveryState extends State<file_recovery> {
  @override
  Widget build(BuildContext context) {
     final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    void _showSnack(String msg) {
      final _snackBarContent = SnackBar(content: Text(msg));
      ScaffoldMessenger.of(_scaffoldKey.currentState!.context)
          .showSnackBar(_snackBarContent);
    }
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => setting()));
            },
            icon: Icon(Icons.settings),
            iconSize: 28,
          )
        ],
        backgroundColor: Colors.black,
        title: Text(
          "File Recovery",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: icon.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: InkWell(
                        onTap: () {
                            _showSnack("Please wait a few seconds");
                          Route1(context, navigate[index]);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Color.fromARGB(255, 42, 41, 41)),
                          height: MediaQuery.of(context).size.height * 0.1,
                          // color: Color.fromARGB(255, 42, 41, 41),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Icon(
                                  icon[index],
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                              // SizedBox(
                              //   width: 10,
                              // ),
                              Text(
                                recovery[index],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
            Column(
              children: [
                TextButton(
                    onPressed: () {

                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => feedback()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.question_mark,
                          color: Colors.grey,
                          size: 19,
                        ),
                        Text(
                          "Feedback & Suggestion",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w400),
                        ),
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

List recovery = [
  "Video recovery",
  "Photo recovery",
  "Audio recovery",
  // "Duplicate",
  "Deleted"
];
List icon = [
  Icons.play_arrow,
  Icons.photo,
  Icons.audiotrack,
  // Icons.layers_sharp,
  Icons.delete
];
List navigate = [
  "/video_recovery",
  "/photorecovery",
  "/audio_recovery",
  // "/duplicate",
  "/deleted"
];

Route1(context, String page1) {
  Navigator.pushNamed(context, page1);
}
