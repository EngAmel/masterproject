import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';
import 'package:request/constans/colors.dart';
import 'package:request/screens/supervisor/add_supervaisor.dart';

class MySideBar extends StatelessWidget {
  const MySideBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 300.0,
      child: MultiLevelDrawer(
          divisionColor: themeColorDarkest,
          rippleColor: themeColorDarkest,
          subMenuBackgroundColor: themeColorDarkest,
          header: SizedBox(
            height: size.height * 0.25,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/download.png",
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Heigher studies collage")
                ],
              ),
            ),
          ),
          children: [
            MLMenuItem(
                leading: const Icon(Icons.dashboard),
                content: const Text("   Dashboard "),
                onClick: () {}),

            // 000000000000000000000000000000000000000000000
            MLMenuItem(
                leading: const Icon(Icons.person),
                trailing: const Icon(Icons.arrow_right),
                subMenuItems: [
                  MLSubmenu(
                      submenuContent: const Text("Add Supervisor"),
                      onClick: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const AddSupervisorForm();
                        }));
                      }),
                  MLSubmenu(
                      submenuContent: const Text("View Supervisor"),
                      onClick: () {}),
                ],
                content: const Text("   Supervisors "),
                onClick: () {}),
            // 00000000000000000000000000000000000000000
            MLMenuItem(
                leading: const Icon(Icons.person),
                trailing: const Icon(Icons.arrow_right),
                subMenuItems: [
                  MLSubmenu(
                      submenuContent: const Text("Add Stydents"),
                      onClick: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const AddSupervisorForm();
                        }));
                      }),
                  MLSubmenu(
                      submenuContent: const Text("All Student"),
                      onClick: () {}),
                ],
                content: const Text("   Students  "),
                onClick: () {}),
            // 0000000000000000000000000000000000000
            MLMenuItem(
                leading: const Icon(Icons.edit_document),
                trailing: const Icon(Icons.arrow_right),
                subMenuItems: [
                  MLSubmenu(
                    submenuContent: const Text("New Requst"),
                    onClick: () {},
                  ),
                  MLSubmenu(
                      submenuContent: const Text("All Requests"),
                      onClick: () {}),
                  MLSubmenu(
                      submenuContent: const Text("Freezing Requests"),
                      onClick: () {}),
                  MLSubmenu(
                      submenuContent: const Text("Unfreezing Requests"),
                      onClick: () {}),
                  MLSubmenu(
                      submenuContent: const Text("Extention Requests"),
                      onClick: () {}),
                  MLSubmenu(
                      submenuContent:
                          const Text("Supervisor chainging Requests"),
                      onClick: () {}),
                  MLSubmenu(
                      submenuContent: const Text("Title chainging Requests"),
                      onClick: () {}),
                  MLSubmenu(
                      submenuContent: const Text("Genral Request"),
                      onClick: () {})
                ],
                content: const Text("   Requests "),
                onClick: () {}),
            MLMenuItem(
                leading: const Icon(Icons.rule_outlined),
                // trailing: const Icon(Icons.arrow_right),
                // subMenuItems: [
                //   MLSubmenu(
                //       submenuContent: const Text("New Requst"),
                //       onClick: () {

                //       },
                //       ),
                //   MLSubmenu(
                //       submenuContent: const Text("All Requests"),
                //       onClick: () {

                //       }),
                //       MLSubmenu(
                //       submenuContent: const Text("Freezing Requests"),
                //       onClick: () {

                //       }),
                //       MLSubmenu(
                //       submenuContent: const Text("Unfreezing Requests"),
                //       onClick: () {

                //       }),
                //       MLSubmenu(
                //       submenuContent: const Text("Extention Requests"),
                //       onClick: () {

                //       }),
                //       MLSubmenu(
                //       submenuContent: const Text("Supervisor chainging Requests"),
                //       onClick: () {

                //       }),
                //       MLSubmenu(
                //       submenuContent: const Text("Title chainging Requests"),
                //       onClick: () {

                //       }),
                //       MLSubmenu(
                //       submenuContent: const Text("Genral Request"),
                //       onClick: () {

                //       })

                // ],
                content: const Text("   Rules  "),
                onClick: () {}),
          ]),
    );
  }
}
