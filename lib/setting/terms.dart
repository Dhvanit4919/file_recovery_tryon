// ignore_for_file: unused_import, camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class terms extends StatefulWidget {
  terms({Key? key}) : super(key: key);

  @override
  State<terms> createState() => _termsState();
}

class _termsState extends State<terms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Terms of use",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Center(
                child: Text(
                  "Terms of use",
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
                "If your business doesn't have a blog, you might want to reconsider — B2B marketers who use blogs receive 67% more leads than those who do not, and blogs have been rated the 5th most trusted source for accurate online information.\n\nBuild your website with HubSpot's Free CMS SoftwareAt its most basic, blogs can help you develop an online presence, prove yourself an expert in an industry, and attract more quality leads to all pages of your site.If you're contemplating creating a blog for your business, or simply want to know what one is, keep reading.",
                style: TextStyle(color: Colors.white, fontSize: 17),
              )
            ],
          ),
        ),
      ),
    );
  }
}
