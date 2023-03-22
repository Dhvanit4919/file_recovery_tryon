// ignore_for_file: unused_import, camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, avoid_print, unnecessary_brace_in_string_interps, unused_local_variable, no_leading_underscores_for_local_identifiers, unused_element

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
// import 'package:recovery_flutter/file_recovery/all_video.dart';

import 'all_video.dart';

class video_recovery extends StatefulWidget {
  video_recovery({Key? key}) : super(key: key);
  @override
  State<video_recovery> createState() => _video_recoveryState();
}

class _video_recoveryState extends State<video_recovery> {
  
 

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _scaffoldKey,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Video Recovery",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 23),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 42, 41, 41),
                    ),
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => all_video()));
                        },
                        icon: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          height: MediaQuery.of(context).size.height * 0.08,
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: Icon(
                            Icons.play_arrow_rounded,
                            color: Colors.black,
                            size: 60,
                          ),
                        )),
                  ),
                ),
                Text(
                  "Tap to start scanning",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 143, 137, 137),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
