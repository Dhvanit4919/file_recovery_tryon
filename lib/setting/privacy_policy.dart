// ignore_for_file: unused_import, camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class privacy extends StatefulWidget {
  privacy({Key? key}) : super(key: key);

  @override
  State<privacy> createState() => _privacyState();
}

class _privacyState extends State<privacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Privacy policy"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Center(
                child: Text(
                  "Privacy Policy",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 23),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Mobile application development is the process of creating software applications that run on a mobile device, and a typical mobile application utilizes a network connection to work with remote computing resources.\n\nWithout app developers, companies and individuals would struggle to perform. Apps can be a great way for customers to interact with brands and businesses that they like. Apps can also be a great way for companies to communicate with their users.\n\nJava, Kotlin, Python, R programming, C++, HTML5, and C# are the major programming languages used for developing Android mobile apps. iOS mobile apps are powered by programming languages like Swift, Objective-C, C#, and HTML5.\n\nThere are three basic types of mobile apps if we categorize them by the technology used to code them: Native apps are created for one specific platform or operating system. Web apps are responsive versions of websites that can work on any mobile device or OS because they're delivered using a mobile browser",
                style: TextStyle(color: Colors.white, fontSize: 17),
              )
            ],
          ),
        ),
      ),
    );
  }
}
