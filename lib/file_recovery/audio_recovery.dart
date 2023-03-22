// ignore_for_file: unused_import, camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import 'all_audio.dart';

class audio_recovery extends StatefulWidget {
  audio_recovery({Key? key}) : super(key: key);
  @override
  State<audio_recovery> createState() => _audio_recoveryState();
}

class _audio_recoveryState extends State<audio_recovery> {
  // Future<void> permission() async {
  //   var status = await Permission.manageExternalStorage.request();
  //   if (status.isDenied) {
  //     status = await Permission.manageExternalStorage.request();
  //   }
  //   // else{
  //   //    Navigator.pushReplacement(context,
  //   //                           MaterialPageRoute(builder: (context) => audio()));
  //   // }
  //   if (status.isPermanentlyDenied) {
  //     openAppSettings();
  //   }
  //   else{
  //      Navigator.pushReplacement(context,
  //                             MaterialPageRoute(builder: (context) => audio()));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Audio Recovery",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 23),
          )),
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
                          // permission();

                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => audio()));
                        },
                        icon: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          height: MediaQuery.of(context).size.height * 0.08,
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: Icon(
                            Icons.audiotrack,
                            color: Colors.black,
                            size: 45,
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
