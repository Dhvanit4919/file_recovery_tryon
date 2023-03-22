// ignore_for_file: unused_import, camel_case_types, prefer_const_constructors_in_immutables, unused_element, avoid_unnecessary_containers, prefer_const_constructors, prefer_typing_uninitialized_variables, unused_local_variable, avoid_print, non_constant_identifier_names, deprecated_member_use, unused_field, annotate_overrides, prefer_final_fields

import 'dart:io';
import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import 'fetch_all_file.dart';

class all_image extends StatefulWidget {
  all_image({Key? key}) : super(key: key);

  @override
  State<all_image> createState() => _all_imageState();
}

class _all_imageState extends State<all_image> {
  List _image = [];

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _getFiles();

    
  }

  Future _getFiles() async {
    
    FetchAllVideos ob = FetchAllVideos();
    await ob.getAllVideos('.jpg', '.png').then((value) {
      setState(() {
        _image = value;
      });
    });

    print("image------>>>>>${_image.length}");
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Photos"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
        ),
        itemCount: _image.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: SizedBox(
                height: 10,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Color.fromARGB(255, 42, 41, 41),
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Image.file(
                      File(_image[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
