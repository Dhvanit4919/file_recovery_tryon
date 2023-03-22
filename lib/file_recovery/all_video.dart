// ignore_for_file: unused_import, camel_case_types, prefer_const_constructors, prefer_const_constructors_in_immutables, unused_element, override_on_non_overriding_member, unused_field, annotate_overrides, unnecessary_string_interpolations, avoid_print, prefer_final_fields, unnecessary_brace_in_string_interps, import_of_legacy_library_into_null_safe, unused_local_variable, avoid_unnecessary_containers, unnecessary_import

import 'dart:convert';
// import 'dart:ffi';
import 'dart:io';

import 'package:file_recovery_tryon/file_recovery/video_controller.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:video_player/video_player.dart';

import 'fetch_all_file.dart';

class all_video extends StatefulWidget {
  all_video({Key? key}) : super(key: key);

  @override
  State<all_video> createState() => _all_videoState();
}

class _all_videoState extends State<all_video> {
  @override
  // List _files = [];
  List videos = [];
  VideoPlayerController? _controller;

  //VideoController videoController = Get.put(VideoController());

  // List<File> videos = []; //this list for getvideo

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    Future.delayed(Duration(microseconds: 400), () {
      _getFiles();
    });
    
    super.initState();
    // getfile();
    //getImage();
  }

  Future _getFiles() async {
    FetchAllVideos ob = FetchAllVideos();
    ob.getAllVideos('.mp4', '.mov').then((value) {
      // setState(() async {
      setState(() {
        videos = value;
      });

      print("videoListController------>>>>>${videos.length}");
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Video"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
        ),
        itemCount: videos.length,
        itemBuilder: (BuildContext context, int index) {
          return FutureBuilder(
              future: getImage(File(videos[index])),
              builder: (context, snapshot) {
                return !snapshot.hasData
                    ? Container(
                        padding: EdgeInsets.all(70),
                        child: CircularProgressIndicator(),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 20,
                          child: Container(
                            // ignore: sort_child_properties_last
                            child: Center(
                                child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.black.withOpacity(0.55)),
                              child: const Icon(Icons.play_arrow_sharp,
                                  size: 50, color: Colors.white),
                            )),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: MemoryImage(
                                      snapshot.data as Uint8List,
                                    ))),
                          ),
                        ),
                      );
              });
          //             onTap: () {
          //               Navigator.push(
          //                 context,
          //                 MaterialPageRoute(builder: (context) {
          //                   return playdownloadvideo(
          //                     file: downloadedvideo!,
          //                     index: index,
          //                   );
          //                 }),
          //               );
          //               print(downloadedvideo);
          //             }
          //             // tag: downloadedvideo!.path,
          //             ),
          //       ),
          //     ),
          //   ),
          // );

          // FutureBuilder(
          //     future: getImage(videos[index].toString()),
          //     builder: (context, snap) {
          //       if (!snap.hasData) {
          //         return CircularProgressIndicator();
          //       }

          //       return InkWell(
          //         onTap: () {
          //           // setState(() {
          //           //   _controller = VideoPlayerController.file(videos[index])
          //           //     ..initialize().then((_) {
          //           //       _controller.play();
          //           //     });
          //           // });
          //         },
          //         child: SizedBox(
          //           height: 10,
          //           child: Card(
          //             color: Color.fromARGB(255, 42, 41, 41),
          //             child: Container(
          //               padding: EdgeInsets.all(8),
          //               child: Column(
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 children: [
          //                   SizedBox(height: 10),
          //                   Expanded(
          //                       child: Text(
          //                     videos[index].toString(),
          //                     style: TextStyle(color: Colors.white),
          //                   )),
          //                 ],
          //               ),
          //             ),
          //           ),
          //         ),
          //       );
          //     });
        },
      ),
    );
  }

  getImage(File path) async {
    // final fileName = await VideoThumbnail.thumbnailData(
    //   video: path,
    //   // thumbnailPath: (await getTemporaryDirectory()).path,
    //   imageFormat: ImageFormat.WEBP,
    //   maxHeight:
    //       64, // specify the height of the thumbnail, let the width auto-scaled to keep the source aspect ratio
    //   quality: 75,
    // );

    final uint8list = await VideoThumbnail.thumbnailData(
      video: path.absolute.path,
      imageFormat: ImageFormat.JPEG,
      maxWidth:
          200, // specify the width of the thumbnail, let the height auto-scaled to keep the source aspect ratio
      quality: 100,
    );
    print("-------->>>>>>>>.${uint8list}");
    return uint8list;
  }
}
