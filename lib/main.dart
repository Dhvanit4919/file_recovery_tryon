// ignore_for_file: unused_local_variable, prefer_const_constructors_in_immutables, non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_const_declarations, unused_field, unused_import

import 'dart:io';

import 'package:file_recovery_tryon/setting/exit.dart';
import 'package:file_recovery_tryon/setting/feedback.dart';
import 'package:file_recovery_tryon/setting/privacy_policy.dart';
import 'package:file_recovery_tryon/setting/terms.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:recovery_flutter/setting/feedback.dart';
// import 'package:recovery_flutter/setting/privacy_policy.dart';
// import 'package:recovery_flutter/setting/terms.dart';
// import 'file_recovery/audio_recovery.dart';
import 'file_recovery/audio_recovery.dart';
import 'file_recovery/deleted.dart';
// import 'file_recovery/duplicate.dart';
import 'file_recovery/file_recovery.dart';
import 'file_recovery/photo_recovery.dart';
import 'file_recovery/video_recovery.dart';
// import 'package:hive/hive.dart';
// import 'package:path_provider/path_provider.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // Directory documents = await getApplicationDocumentsDirectory();
  // Hive.init(documents.path);
  // await Hive.openBox<String>("language");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/feedback": (context) => feedback(),
        "/MyHomePage": ((context) => MyHomePage()),
        // '/rate_us': ((context) => rate_us()),
        '/terms': ((context) => terms()),
        '/privacy': ((context) => privacy()),
        '/video_recovery': ((context) => video_recovery()),
        '/photorecovery': ((context) => photorecovery()),
        // '/duplicate': ((context) => duplicate()),
        '/deleted': ((context) => deleted()),
        '/audio_recovery': ((context) => audio_recovery())
      },
      debugShowCheckedModeBanner: false,
      title: 'Restore Image',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int? _selectindexcolor;
  // late Box<String> Language;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    // Language = Hive.box<String>("language");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              showExitPopup(context);
              // print(showExitPopup(context));
            },
          ),
          backgroundColor: Colors.black,
          title: Text(
            "Select language",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 23),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => file_recovery()));
              },
              icon: Icon(Icons.check),
              iconSize: 28,
            ),
          ],
        ),
        body: ListView.builder(
            itemCount: language.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _selectindexcolor = index;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: _selectindexcolor == index
                            ? Color.fromARGB(255, 210, 28, 28)
                            : Color.fromARGB(255, 42, 41, 41)),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ListTile(
                        title: Row(children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundImage: AssetImage(image[index]),
                            // backgroundColor: Colors.transparent,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            language[index],
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          )
                        ]),
                      ),
                    ),
                  ),
                ),
              );
            }));
  }
}

List language = [
  "System",
  "English",
  "عربي",
  "português",
  "Indonesia",
  "Español",
  "Türkçe ",
  "বাংলা",
  "فارسی",
  "русский",
  "پاکستانی",
  "Melayu",
  "Tiếng việt"
];

List image = [
  "assets/system.jpg",
  "assets/english.webp",
  "assets/egypt.webp",
  "assets/barzil.webp",
  "assets/indonesia.png",
  "assets/red_yellow.png",
  "assets/turky.webp",
  "assets/bangla.webp",
  "assets/iran.webp",
  "assets/russia.webp",
  "assets/pakistan.webp",
  "assets/malesiya.webp",
  "assets/viet.webp"
];
