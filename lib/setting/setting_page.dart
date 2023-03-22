// ignore_for_file: unused_import, camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, import_of_legacy_library_into_null_safe, non_constant_identifier_names, avoid_types_as_parameter_names

// import 'package:deleted_recovery/setting/feedback.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:path/path.dart';
import 'package:smiley_rating_dialog/smiley_rating_dialog.dart';
import 'feedback.dart';

class setting extends StatefulWidget {
  setting({Key? key}) : super(key: key);

  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {
  Future<void> share1(dynamic link, String title) async {
    await FlutterShare.share(
        title: 'Mobile_locator_app share',
        text: title,
        linkUrl: link,
        chooserTitle: 'Share using media');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Settings",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
        ),
      ),
      body: Column(
        children: [
          ListView.builder(
              shrinkWrap: true,
              itemCount: tools.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Routes(context, navigates[index]);
                  },
                  child: ListTile(
                      title: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 42, 41, 41)),
                        // color: Color.fromARGB(255, 42, 41, 41),
                        height: 35,
                        width: 40,
                        child: Icon(
                          icon[index],
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      // Icon(icon[index]),
                      Text(
                        tools[index],
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )
                    ],
                  )),
                );
              }),
          GestureDetector(
            onTap: () {
              share1("https://docs.flutter.dev/development/ui/widgets/material",
                  "Photos Recovery");
            },
            child: ListTile(
              title: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 42, 41, 41)),
                    // color: Color.fromARGB(255, 42, 41, 41),
                    height: 35,
                    width: 40,
                    child: Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  // Icon(icon[index]),
                  Text(
                    "Share app",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              showDialog(
                  barrierDismissible: true,
                  context: context,
                  builder: (context) => SmileyRatingDialog(
                        title: Text('Thanks For Rating'),
                        starColor: Color.fromARGB(255, 228, 165, 39),
                        isRoundedButtons: true,
                        positiveButtonText: 'Submite',
                        negativeButtonText: 'Cancel',
                        positiveButtonColor: Color.fromARGB(255, 66, 205, 119),
                        negativeButtonColor: Color.fromARGB(255, 230, 138, 46),
                        onCancelPressed: () => Navigator.pop(context),
                        onSubmitPressed: (rating) {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => feedback()));
                        },
                      ));
            },
            child: ListTile(
              title: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 42, 41, 41)),
                    // color: Color.fromARGB(255, 42, 41, 41),
                    height: 35,
                    width: 40,
                    child: Icon(
                      Icons.star,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  // Icon(icon[index]),1
                  Text(
                    "Rate us",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List tools = [
  "Feedback & suggestion",
  "Language",
  // "Rate us",
  "Terms of use",
  "Privacy policy"
];
List icon = [
  Icons.feedback,
  Icons.language,
  // Icons.star_rate,
  Icons.person,
  Icons.privacy_tip,
];

List navigates = ['/feedback', '/MyHomePage', '/terms', '/privacy'];

Routes(context, String pagename) {
  Navigator.pushNamed(context, pagename);
}
