// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';
// import 'package:provider/provider.dart';
// import 'package:usa_tv/globals.dart';
// import 'package:usa_tv/providers/ad_provider.dart';

Future<bool> showExitPopup(context) async {
  // Load_Ads().loadads(context, ['b2']);

  return await showDialog(
      context: context,
      builder: (context) => SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.90,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Material(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: const BorderSide(color: Colors.red, width: 2),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    // Image(
                    //   image: AssetImage('assets/splash.png'),
                    //   height: dheight / 4,
                    // ),
                    Text('Do You Want To Exit An App??',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            exit(0);
                          },
                          child: Container(
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: MediaQuery.of(context).size.width / 3.5,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.red, width: 2),
                                  color: Color.fromARGB(255, 45, 42, 42),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                child: Text('Yes',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.06)),
                              )),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: MediaQuery.of(context).size.width / 3.5,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.red, width: 2),
                                  color: Color.fromARGB(255, 45, 42, 42),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                child: Text(
                                  'No',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.06),
                                ),
                              )),
                        ),
                      ],
                    ),
                    // SizedBox(
                    //   height: bannerAd2.size.height.toDouble(),
                    //   width: bannerAd2.size.width.toDouble(),
                    //   child: Consumer<Ad_Provider>(
                    //     builder: (context, value, child) {
                    //       return value.isBannerAdReady2
                    //           ? AdWidget(ad: bannerAd2)
                    //           : Center(
                    //               child: Text("loading ads...",
                    //                   style: TextStyle(color: Colors.black)),
                    //             );
                    //     },
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          )));
}
