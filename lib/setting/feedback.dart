// ignore_for_file: unused_import, camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors, avoid_unnecessary_containers, deprecated_member_use, sized_box_for_whitespace, unused_element, unused_local_variable, unnecessary_brace_in_string_interps, avoid_print, unused_field
import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import 'feedback_controller.dart';

// import '../main.dart';
class feedback extends StatefulWidget {
  feedback({Key? key}) : super(key: key);
  @override
  State<feedback> createState() => _feedbackState();
}

class _feedbackState extends State<feedback> {
  File? imageFile;
  List<String> emailsendattechment = [];
  int? _selcetfeedbutton;

  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );

    if (pickedFile != null) {
      setState(() {
        emailsendattechment.add(pickedFile.path);
        print("image-------->>>${pickedFile}");
        // print(); //this line adds file path to attachments
      });
    }
  }

  Future<void> send() async {
    print(feedbackcontroller.subjectcontroller.text);
    print(feedbackcontroller.bodycontroller.text);

    final Email email = Email(
      subject: feedbackcontroller.subjectcontroller.text,
      body: feedbackcontroller.bodycontroller.text,
      attachmentPaths: emailsendattechment,
      recipients: ['pruthvikmoradiya3113gmail.com'],
    );

    String platformResponse;

    try {
      await FlutterEmailSender.send(email);
      platformResponse = 'success';
    } catch (error) {
      print(error);
      platformResponse = error.toString();
    }

    if (!mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(platformResponse),
      ),
    );
  }

  final FeedbackController feedbackcontroller = Get.put(FeedbackController());

  @override
  Widget build(BuildContext context) {
    
    File imagefile;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 37, 36, 36),
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: Colors.black,
        title: Container(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "What are you not satisfied with?",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Image(
                image: AssetImage(
                  "assets/5stare.png",
                ),
                fit: BoxFit.cover,
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      shape: StadiumBorder(
                        side: BorderSide(
                            color: Color.fromARGB(255, 120, 116, 116),
                            width: 2),
                      ),
                    ),
                    onPressed: () {
                      feedbackcontroller.subjectcontroller.text = "Suggestions";
                    },
                    child: Text(
                      "Suggestions",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      shape: StadiumBorder(
                        side: BorderSide(
                            color: Color.fromARGB(255, 120, 116, 116),
                            width: 2),
                      ),
                    ),
                    onPressed: () {
                      feedbackcontroller.subjectcontroller.text = "Bugs";
                    },
                    child: Text(
                      "Bugs",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      shape: StadiumBorder(
                        side: BorderSide(
                            color: Color.fromARGB(255, 120, 116, 116),
                            width: 2),
                      ),
                    ),
                    onPressed: () {
                      feedbackcontroller.subjectcontroller.text =
                          "Support more file types";
                    },
                    child: Text(
                      "Support more file types",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      shape: StadiumBorder(
                        side: BorderSide(
                            color: Color.fromARGB(255, 120, 116, 116),
                            width: 2),
                      ),
                    ),
                    onPressed: () {
                      feedbackcontroller.subjectcontroller.text = "Others";
                    },
                    child: Text(
                      "Others",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                color: Color.fromARGB(255, 73, 71, 71),
                thickness: 1.0,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                child: TextField(
                  controller: feedbackcontroller.bodycontroller,
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText:
                        "We'd greatly appreciate it if you kindly give us feedbake in detail",
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 91, 88, 88),
                        fontWeight: FontWeight.w500),
                    filled: true,
                    fillColor: Colors.transparent,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 60,
                    height: 50,
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
                        _getFromGallery();
                      },
                      child: Icon(Icons.image),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              ListTile(
                title: Container(
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Color.fromARGB(255, 64, 88, 224),
                      shape: StadiumBorder(),
                    ),
                    onPressed: () async {
                      send();
                      // await FlutterEmailSender.send(email);
                    },
                    child: Text(
                      "Send",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
