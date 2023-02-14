import 'package:flutter/material.dart';
import 'package:request/constans/colors.dart';
import 'package:request/screens/dashboard.dart';
import 'package:request/screens/extension_request.dart';
import 'package:request/screens/freez_form.dart';
import 'package:request/screens/login_layout.dart';
import 'package:request/screens/other_form.dart';
import 'package:request/screens/request_main_screen.dart';
import 'package:request/screens/searchtitle_change_requst.dart';
import 'package:request/screens/students/add_students.dart';
import 'package:request/screens/students/students_main_scren.dart';
import 'package:request/screens/supervisor/add_supervaisor.dart';
import 'package:request/screens/supervisor/supervisor_main_screen.dart';
import 'package:request/screens/supervisor_change_request.dart';
import 'package:request/screens/unfreezing_request.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  List<bool> _isOpen = [false, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Drawer(
        backgroundColor: Colors.white,
        child: ListView(children: [
          DrawerHeader(
            child: Image.asset(
              "assets/images/download.png",
              width: 50,
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.home_sharp,
              color: Colors.black,
            ),
            title: const Text(
              "Dashboard",
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Dashboard();
              }));
            },
          ),
          const Divider(
            height: 1,
            thickness: 1,
            color: themeColorDarkest,
          ),
          ExpansionPanelList(
            expandedHeaderPadding: EdgeInsets.all(0),
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                _isOpen[index] = !isExpanded;
              });
            },
            children: [
              ExpansionPanel(
                  canTapOnHeader: true,
                  headerBuilder: (context, isExpanded) {
                    return ListTile(
                      title: const Text("Suprvisors"),
                      leading: const Icon(
                        Icons.supervisor_account_rounded,
                        color: Colors.black,
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const Allsuoervisors();
                        }));
                      },
                    );
                  },
                  body: Column(
                    children: [
                      ListTile(
                        title: const Text("Add Suprvisor"),
                        leading: const Icon(
                          Icons.person_add_alt_1,
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const AddSupervisorForm();
                          }));
                        },
                      ),
                    ],
                  ),
                  isExpanded: _isOpen[0]),
              ExpansionPanel(
                  canTapOnHeader: true,
                  headerBuilder: (context, isExpanded) {
                    return ListTile(
                      title: const Text("Students"),
                      leading: const Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const Allstudents();
                        }));
                      },
                    );
                  },
                  body: Column(
                    children: [
                      ListTile(
                        title: const Text("Add Student"),
                        leading: const Icon(
                          Icons.person_add_alt_1,
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const AddStudentrForm();
                          }));
                        },
                      ),
                    ],
                  ),
                  isExpanded: _isOpen[1]),
              ExpansionPanel(
                  canTapOnHeader: true,
                  headerBuilder: (context, isExpanded) {
                    return ListTile(
                      title: const Text("Request"),
                      leading: const Icon(
                        Icons.article,
                        color: Colors.black,
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const AllRequests();
                        }));
                      },
                    );
                  },
                  body: Column(
                    children: [
                      // ListTile(
                      //   title: const Text("Add request"),
                      //   leading: const Icon(
                      //     Icons.edit_document,
                      //   ),
                      //   onTap: () {},
                      // ),
                      ListTile(
                        title: const Text("Freezing requests"),
                        leading: const Icon(
                          Icons.account_tree,
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const MyForm();
                          }));
                        },
                      ),
                      ListTile(
                        title: const Text("Un freezing request"),
                        leading: const Icon(
                          Icons.account_tree,
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const UnfreezingForm();
                          }));
                        },
                      ),
                      ListTile(
                        title: const Text("Extention request"),
                        leading: const Icon(
                          Icons.account_tree,
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const ExtensionRequestForm();
                          }));
                        },
                      ),
                      ListTile(
                        title: const Text("Supervisor change request"),
                        leading: const Icon(
                          Icons.account_tree,
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const SupervisorchangeForm();
                          }));
                        },
                      ),
                      ListTile(
                        title: const Text("Title change request"),
                        leading: const Icon(
                          Icons.account_tree,
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const TitleOfSearchchangeForm();
                          }));
                        },
                      ),
                      ListTile(
                        title: const Text("Genral request"),
                        leading: const Icon(
                          Icons.account_tree,
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const OtherForm();
                          }));
                        },
                      ),
                    ],
                  ),
                  isExpanded: _isOpen[2]),
            ],
          ),
          const SizedBox(
            height: 200,
          ),
          const Divider(
            height: 1,
            thickness: 1,
            color: themeColorDarkest,
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
              color: Colors.black,
            ),
            title: const Text(
              "Logout",
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Loginlayout();
              }));
            },
          ),
        ]),
      ),
    );
  }
}
