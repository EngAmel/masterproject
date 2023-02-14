import 'package:flutter/material.dart';
import 'package:request/constans/colors.dart';
import 'package:request/screens/supervisor_change_details.dart';
import 'package:request/screens/widgets/desk_tap_sideBar.dart';
import 'package:request/screens/widgets/my_appbar.dart';
import 'package:request/screens/widgets/my_sideBar.dart';
import 'package:request/screens/widgets/mytextfield.dart';
import 'package:request/screens/widgets/thebtn.dart';

class StudentdetailsForm extends StatelessWidget {
  const StudentdetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: topNavigationBar(context, scaffoldKey),
        body: SafeArea(
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 300, child: SideBar()),
            Center(
              child: Container(
                width: 1100,
                padding: const EdgeInsets.all(50.0),
                child: ListView(children: [
                  const Text(
                    'Student details Form',
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
                  Center(
                    child: Container(
                      padding: const EdgeInsets.only(right: 42.0, bottom: 30.0),
                      height: 200.0,
                      width: 200.0,
                      alignment: Alignment.topRight,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          // color: const Color.fromARGB(255, 245, 244, 244),
                          border: Border.all(width: 1.0, color: Colors.black54),
                          image: const DecorationImage(
                            image: AssetImage(
                              "assets/images/Tylah-Evershed-Profile-200x200.jpg",
                            ),
                          )),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IntrinsicHeight(
                        child: Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  SizedBox(
                                    height: 70.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 200.0),
                                    child: Text(
                                      'Student data',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue,
                                          fontSize: 18.0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 200.0),
                                    child: Text(
                                      'Student university ID : 11-28697',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 200.0),
                                    child: Text(
                                      'Student name : Amel Abdulazim',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 200.0),
                                    child: Text(
                                      'Email : AmelAbdulazim@gmail.com',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 200.0),
                                    child: Text(
                                      'Address : khartoum',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 200.0),
                                    child: Text(
                                      'Phone number : +249997711996',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 200.0),
                                    child: Text(
                                      'Program : PHD',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 200.0),
                                    child: Text(
                                      'Department : Software engineering',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 200.0),
                                    child: Text(
                                      'Main supervisor name : DR.Othman Alnour',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 200.0),
                                    child: Text(
                                      'Co-supervisor name : __',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 200.0),
                                    child: Text(
                                      'Research title : Heiger studies system',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                ],
                              )),
                              const VerticalDivider(
                                thickness: 1.0,
                                width: 80,
                                color: themeColorDark,
                                indent: 30.0,
                                endIndent: 30.0,
                              ),
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  SizedBox(
                                    height: 70.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 50.0),
                                    child: Text(
                                      'Acceptance Data',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue,
                                          fontSize: 18.0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 50.0),
                                    child: Text(
                                      'proposal acceptance : Accepted',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 50.0),
                                    child: Text(
                                      'Proposal acceptance date : 20/5/2022',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 50.0),
                                    child: Text(
                                      'Council number : 2254975',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                ],
                              )),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      MyBtn(
                        onPress: () {
                          // Navigator.push(context,
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
          ]),
        ));
  }
}
