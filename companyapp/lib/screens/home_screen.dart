import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/utilities/constants.dart';
import 'package:get/get.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: RichText(
              text: TextSpan(children: [
            TextSpan(
              text: 'QuickLogiComp',
              style: TextStyle(
                  fontFamily: 'MontserratVariable',
                  fontVariations: <FontVariation>[FontVariation('wght', 700.0)],
                  color: MAINCOLOR,
                  fontSize: 38),
            ),
            TextSpan(
              text: '.',
              style: TextStyle(
                  fontFamily: 'MontserratVariable',
                  fontVariations: <FontVariation>[FontVariation('wght', 700.0)],
                  color: SUBCOLOR1,
                  fontSize: 38),
            ),
          ])),
        ),
        Container(
          color: LIGHT,
          width: double.infinity,
          height: 50,
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: '안녕하세요 ${FirebaseAuth.instance.currentUser!.displayName ?? ""}님',
                  style: TextStyle(
                      fontFamily: 'PretendardBold',
                      color: Colors.black,
                      fontSize: 30),
                ),
                TextSpan(
                  text: '.',
                  style: TextStyle(
                      fontFamily: 'PretendardBold',
                      color: SUBCOLOR1,
                      fontSize: 30),
                ),
              ])),
              SizedBox(
                height: 5,
              ),
              Text(
                '운송 요청 목록을 확인해보세요!',
                style: TextStyle(
                    fontFamily: 'Pretendard', color: GREY1, fontSize: 15),
              ),
              SizedBox(
                height: 5,
              ),
              // ElevatedButton(
              //     onPressed: () {
              //       Get.toNamed('/RequestInfoSelectScreen');
              //     },
              //     style: ElevatedButton.styleFrom(
              //       primary: MAINCOLOR,
              //       minimumSize: Size(double.infinity, 50),
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(10.0),
              //       ),
              //     ),
              //     child: Row(
              //       children: [
              //         Expanded(
              //           flex: 10,
              //           child: Container(
              //             alignment: Alignment.center,
              //             child: Text(
              //               '견적 요청하기',
              //               style: TextStyle(
              //                   fontFamily: 'PretendardBold',
              //                   color: Colors.white,
              //                   fontSize: 22),
              //             ),
              //           ),
              //         ),
              //         Expanded(
              //           flex: 1,
              //           child: Icon(
              //             Icons.arrow_circle_right_outlined,
              //             size: 28,
              //           ),
              //         )
              //       ],
              //     )),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: GREY2,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 13, 10, 13),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '운송 요청 목록',
                      style: TextStyle(
                          fontFamily: 'PretendardBold',
                          color: Colors.black,
                          fontSize: 18),
                    )
                  ]),
            ),
          ),
        )
      ]),
    );
  }
}
