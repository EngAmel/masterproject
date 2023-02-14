import 'package:flutter/material.dart';
import 'package:request/constans/colors.dart';
import 'package:request/screens/students/students_details.dart';
import 'package:request/screens/supervisor/add_supervaisor.dart';
import 'package:request/screens/supervisor/supervisor_details.dart';
import 'package:request/screens/widgets/desk_tap_sideBar.dart';
import 'package:request/screens/widgets/my_appbar.dart';
import 'package:request/screens/widgets/my_card.dart';
// import 'package:request/screens/widgets/my_sideBar.dart';
import 'package:request/screens/widgets/mytextfield.dart';
import 'package:request/screens/widgets/thebtn.dart';

class Allsuoervisors extends StatelessWidget {
  const Allsuoervisors({super.key});

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    return Scaffold(
      appBar: topNavigationBar(context, scaffoldKey),
      // drawer: MySideBar(size: size),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: 300, child: SideBar()),
            Center(
              child: Container(
                width: 1200,
                padding: const EdgeInsets.only(left: 100.0, top: 10),
                child: ListView(children: [
                  const SizedBox(
                    height: 60,
                  ),
                  Row(
                    children: [
                      const Text(
                        "All supervisors",
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        width: 500,
                      ),
                      const MyTextField(
                        fiedName: "Supervisor name",
                        myIcon: Icons.search,
                        wdth: 200,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      MyBtn(
                        padd: 0.0,
                        mychild: const Icon(Icons.add),
                        myshape: BoxShape.circle,
                        myheight: 50,
                        mywidth: 50,
                        onPress: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const AddSupervisorForm();
                          }));
                        },
                      )
                    ],
                  ),
                  const Divider(
                    thickness: 1.0,
                    height: 80,
                    color: themeColorDark,
                    indent: 10.0,
                    endIndent: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 1100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                MyCard(
                                  imagename:
                                      "assets/images/Tylah-Evershed-Profile-200x200.jpg",
                                  personname: "Amel abdulazim alameen ",
                                  email: "aml.azim@gmail.com",
                                  phone: "+249551733591",
                                  jop: "Lecturer at Al-Neelain University",
                                  mycolor: Colors.black,
                                  onPress1: () {},
                                  onPress2: () {},
                                  onPress3: () {},
                                ),
                                MyCard(
                                  imagename:
                                      "assets/images/Zoe-Institut-10-scaled-e1642151161755-300x300.jpg",
                                  personname: "Othman alnour mohamed ",
                                  email: "aml.azim@gmail.com",
                                  phone: "+249551733591",
                                  jop: "Lecturer at Al-Neelain University",
                                  onPress1: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return const Supervisordetails();
                                    }));
                                  },
                                  onPress2: () {},
                                  onPress3: () {},
                                ),
                                MyCard(
                                  personname: "Othman alnour mohamed ",
                                  email: "aml.azim@gmail.com",
                                  phone: "+249551733591",
                                  jop: "Lecturer at Al-Neelain University",
                                  onPress2: () {},
                                  onPress3: () {},
                                  onPress1: () {},
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                MyCard(
                                  imagename:
                                      "assets/images/Tylah-Evershed-Profile-200x200.jpg",
                                  personname: "Amel abdulazim alameen ",
                                  email: "aml.azim@gmail.com",
                                  phone: "+249551733591",
                                  jop: "Lecturer at Al-Neelain University",
                                  mycolor: Colors.black,
                                  onPress2: () {},
                                  onPress3: () {},
                                  onPress1: () {},
                                ),
                                MyCard(
                                  imagename:
                                      "assets/images/Tylah-Evershed-Profile-200x200.jpg",
                                  personname: "Amel abdulazim alameen ",
                                  email: "aml.azim@gmail.com",
                                  phone: "+249551733591",
                                  jop: "Lecturer at Al-Neelain University",
                                  mycolor: Colors.black,
                                  onPress2: () {},
                                  onPress3: () {},
                                  onPress1: () {},
                                ),
                                MyCard(
                                  imagename:
                                      "assets/images/Zoe-Institut-10-scaled-e1642151161755-300x300.jpg",
                                  personname: "Othman alnour mohamed ",
                                  email: "aml.azim@gmail.com",
                                  phone: "+249551733591",
                                  jop: "Lecturer at Al-Neelain University",
                                  onPress2: () {},
                                  onPress3: () {},
                                  onPress1: () {},
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                MyCard(
                                  personname: "Othman alnour mohamed ",
                                  email: "aml.azim@gmail.com",
                                  phone: "+249551733591",
                                  jop: "Lecturer at Al-Neelain University",
                                  mycolor: Colors.black,
                                  onPress2: () {},
                                  onPress3: () {},
                                  onPress1: () {},
                                ),
                                MyCard(
                                  imagename:
                                      "assets/images/Zoe-Institut-10-scaled-e1642151161755-300x300.jpg",
                                  personname: "Othman alnour mohamed ",
                                  email: "aml.azim@gmail.com",
                                  phone: "+249551733591",
                                  jop: "Lecturer at Al-Neelain University",
                                  onPress2: () {},
                                  onPress3: () {},
                                  onPress1: () {},
                                ),
                                MyCard(
                                  personname: "Amel abdulazim alameen ",
                                  email: "aml.azim@gmail.com",
                                  phone: "+249551733591",
                                  jop: "Lecturer at Al-Neelain University",
                                  mycolor: Colors.black,
                                  onPress2: () {},
                                  onPress3: () {},
                                  onPress1: () {},
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );

    // ListView(
    //   children: [
    //     ListTileWidget(
    //       title: "Applicant of Request",
    //       subtitle: "Amel Abdulazim",
    //       leadingIcon: Icons.person,
    //     ),
    //     ListTileWidget(
    //       title: "Reson of freez",
    //       subtitle: "Travilling ",
    //       leadingIcon: Icons.question_answer,
    //     ),
    //     ListTileWidget(
    //       title: "Date of providing Request",
    //       subtitle: "12/3/2020",
    //       leadingIcon: Icons.calendar_month,
    //     ),
    //     ListTileWidget(
    //       title: "program",
    //       subtitle: "PHD",
    //       leadingIcon: Icons.type_specimen,
    //     ),
    //     ListTileWidget(
    //       title: "Department",
    //       subtitle: "Software engneering",
    //       leadingIcon: Icons.keyboard,
    //     ),
    //   ],
    // ));
  }
}
