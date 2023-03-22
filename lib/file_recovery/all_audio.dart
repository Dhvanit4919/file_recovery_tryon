// ignore_for_file: unused_import, camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors, unused_field, unnecessary_new, unused_local_variable, avoid_print, unused_element, import_of_legacy_library_into_null_safe, prefer_typing_uninitialized_variables, annotate_overrides, avoid_unnecessary_containers, unnecessary_brace_in_string_interps, non_constant_identifier_names, unused_shown_name

import 'dart:io' show File, Platform;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:flutter/services.dart'
// import 'package:on_audio_query/on_audio_query.dart';
import 'package:permission_handler/permission_handler.dart';

import 'fetch_all_file.dart';
import 'package:path/path.dart';

class audio extends StatefulWidget {
  audio({Key? key}) : super(key: key);

  @override
  State<audio> createState() => _audioState();
}

class _audioState extends State<audio> {
  List audio = [];

  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _getFiles();
  }

  void _getFiles() async {
    FetchAllVideos ob = FetchAllVideos();
    ob.getAllVideos('.mp3', '.mp3').then((value) {
      setState(() {
        audio = value;

        for (int i = 0; i < audio.length; i++) {
          File file = File(audio[i].toString());
          String fileName = file.path.split('/').last;

          print("file name------->>>>${fileName}");
        }
      });
    });

    print("Audio------>>>>>${audio.length}");
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Audio"),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: audio.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {},
            child: SizedBox(
              height: 10,
              child: Card(
                color: Color.fromARGB(255, 42, 41, 41),
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // CircleAvatar(
                      //   child: CircleAvatar(
                      //     radius: 65,
                      //     backgroundImage: AssetImage('assets/audio.jpg'),
                      //   ),
                      // ),
                      Icon(
                        Icons.audio_file,
                        size: 50,
                        color: Colors.white,
                      ),
                      SizedBox(height: 10),
                      Expanded(
                          child: Text(
                        getfile(audio[index].toString()),
                        style: TextStyle(color: Colors.white),
                      )),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  String getfile(String file_path) {
    File file = File(file_path);
    String fileName = file.path.split('/').last;
    return fileName;
  }
}
