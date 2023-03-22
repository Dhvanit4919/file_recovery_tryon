// ignore_for_file: avoid_print, non_constant_identifier_names

import 'package:file_recovery_tryon/file_recovery/fetch_all_file.dart';
import 'package:get/get.dart';

class VideoController extends GetxController {
  List all_video = [].obs;

  @override
  void onInit() {
    // ignore: todo
    // TODO: implement onInit
    _getFiles();
    super.onInit();
  }

  void _getFiles() {
    FetchAllVideos ob = FetchAllVideos();
    ob.getAllVideos('.mp4', '.mov').then((value) {

      
      // setState(() async {
      all_video = value;

      print("videoListController------>>>>>${all_video.length}");
    });
  }
}
