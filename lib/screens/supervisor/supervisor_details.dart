import 'dart:html';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:request/constans/colors.dart';
import 'package:request/screens/supervisor/committees_details.dart';
import 'package:request/screens/supervisor/researches_details.dart';
import 'package:request/screens/supervisor_change_details.dart';
import 'package:request/screens/widgets/desk_tap_sideBar.dart';
import 'package:request/screens/widgets/my_appbar.dart';
import 'package:request/screens/widgets/my_sideBar.dart';
import 'package:request/screens/widgets/mytext.dart';
import 'package:request/screens/widgets/thebtn.dart';

class Supervisordetails extends StatelessWidget {
  const Supervisordetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: topNavigationBar(context, scaffoldKey),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: 300, child: SideBar()),
            Center(
              child: Container(
                width: 1200,
                padding: const EdgeInsets.all(50.0),
                child: ListView(children: [
                  const Text(
                    "Supervisor details Form",
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const Divider(
                    thickness: 1.0,
                    height: 50,
                    color: themeColorDark,
                    indent: 10.0,
                    endIndent: 10.0,
                  ),
                  Column(
                    children: [
                      IntrinsicHeight(
                        child: Row(
                          children: [
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    padding:
                                        const EdgeInsets.only(bottom: 30.0),
                                    height: 300.0,
                                    width: 300.0,
                                    alignment: Alignment.topRight,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: const Color.fromARGB(
                                            255, 245, 244, 244),
                                        border: Border.all(
                                            width: 1.0, color: Colors.black54),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            "assets/images/Zoe-Institut-10-scaled-e1642151161755-300x300.jpg",
                                          ),
                                        )),
                                  ),
                                )
                              ],
                            )),
                            const VerticalDivider(
                              thickness: 1.0,
                              width: 150,
                              color: themeColorDark,
                              indent: 70.0,
                              endIndent: 25.0,
                            ),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 30.0,
                                ),
                                const MyText(
                                  txt: "Personal Data",
                                  weight: FontWeight.bold,
                                  mysize: 20.0,
                                  mycolor: Color.fromARGB(255, 4, 6, 113),
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                const MyText(
                                    txt:
                                        "Supervisor name : Othman Alnour mohamed Ahmed"),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                const MyText(
                                    txt: "Email : Othman.alnour@gmail"),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                const MyText(
                                    txt: 'Address : Khartoum - omdurman'),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                const MyText(txt: "Phone : +249123456789"),
                                const Divider(
                                  thickness: 3.0,
                                  height: 40.0,
                                  color: themeColorDarkest,
                                ),
                                const MyText(
                                  txt: "Academic qualification",
                                  weight: FontWeight.bold,
                                  mysize: 20.0,
                                  mycolor: Color.fromARGB(255, 4, 6, 113),
                                ),
                                const SizedBox(
                                  height: 30.0,
                                ),
                                const MyText(
                                    txt:
                                        "Bachelor of Computer scince ,  university of khartoum "),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                const MyText(
                                    txt:
                                        "Master of software engineering ,  university of khartoum "),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                const MyText(
                                    txt:
                                        "PHD of software engineering ,  university of khartoum "),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                RichText(
                                    text: TextSpan(
                                        text:
                                            "The number of research supervised by the supervisor ",
                                        style: const TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                        children: [
                                      TextSpan(
                                        text: "15 Researches",
                                        style: const TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return const ResearchesDetails();
                                            }));
                                          },
                                      )
                                    ])),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                RichText(
                                    text: TextSpan(
                                        text:
                                            "The number of discussion committees he joined ",
                                        style: const TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                        children: [
                                      TextSpan(
                                          text: "5 Committee",
                                          style: const TextStyle(
                                              fontSize: 14.0,
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              Navigator.push(context,
                                                  MaterialPageRoute(
                                                      builder: (context) {
                                                return const CommitteesDetails();
                                              }));
                                            })
                                    ]))

                                // Expanded(
                                //     child: Row(
                                //   children: [
                                //     const MyText(
                                //         txt:
                                //             "The number of research supervised by the supervisor"),
                                //     const SizedBox(
                                //       width: 5.0,
                                //     ),
                                //     const MyText(
                                //       txt: "15 Researches",
                                //       mycolor: Colors.red,
                                //     ),
                                //     IconButton(
                                //         onPressed: () {
                                //
                                //         },
                                //         icon: const Icon(Icons.remove_red_eye)),
                                //   ],
                                // )),
                                // Expanded(
                                //     child: Row(
                                //   children: [
                                //     const MyText(
                                //         txt:
                                //             "The number of discussion committees he joined"),
                                //     const SizedBox(
                                //       width: 5.0,
                                //     ),
                                //     MyBtn(
                                //       onPress: () {
                                //         Navigator.push(context,
                                //             MaterialPageRoute(builder: (context) {
                                //           return const ();
                                //         }));
                                //       },
                                //       mychild: const Text("5 Committee"),
                                //       myheight: 50,
                                //       mywidth: 150,
                                //       myshape: BoxShape.circle,
                                //     )
                                //   ],
                                // ))
                              ],
                            ))
                          ],
                        ),
                      ),
                      MyBtn(
                        mychild: const Icon(Icons.edit),
                        myshape: BoxShape.circle,
                        myheight: 50,
                        mywidth: 50,
                        onPress: () {
                          //Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) {
                          //   return SupervisorChangeDetails();
                          // }));
                        },
                      )
                    ],
                  )
                ]),
              ),
            ),
          ],
        ),
      ),
    );

    // body: Center(
    //     child: Container(
    //         width: 1200,
    //         padding: const EdgeInsets.all(50.0),
    //         child: ListView(children: [
    //
    //           Column(
    //             crossAxisAlignment: CrossAxisAlignment.end,
    //             children: [
    //               Expanded(
    //                   child: Row(children: [
    //                 Expanded(
    //                     child: Column(
    //
    //                   children: [
    //                     InkWell(
    //
    //                       child: Container(
    //
    //                         decoration: BoxDecoration(
    //
    //                             ),
    //                       ),
    //                     ),
    //                   ],
    //                 )),
    //
    //                 Expanded(
    //                   child: Column(
    //                     children: [
    //
    //
    //
    //
    //
    //
    //                     ],
    //                   ),
    //                 ),
    //               ])),
    //               const SizedBox(
    //                 height: 30.0,
    //               ),
    //
    //               )
    //             ],
    //           )
    //         ]))));

    //
  }
}
