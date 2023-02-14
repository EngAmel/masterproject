import 'package:flutter/material.dart';
import 'package:request/constans/colors.dart';
import 'package:request/screens/widgets/my_sideBar.dart';

class Freezingdetails extends StatelessWidget {
  const Freezingdetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Requests"),
          backgroundColor: themeColorDarkest,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        drawer: MySideBar(size: size),
        body: Container(
          padding: const EdgeInsets.all(50.0),
          child: ListView(children: [
            const Text(
              'Amel Abdulazim request ',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade500,
                            offset: const Offset(4.0, 4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0),
                        const BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4.0, -4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0)
                      ]),
                  child: DataTable(columns: const <DataColumn>[
                    DataColumn(
                      label: Text(
                        "Type of Request",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: themeColorDarkest,
                        ),
                      ),
                    ),
                    DataColumn(
                        label: Text(
                      "Freezing request",
                    )),
                  ], rows: const <DataRow>[
                    DataRow(cells: <DataCell>[
                      DataCell(
                        Text(
                          "Reason of freeze ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: themeColorDarkest,
                          ),
                        ),
                      ),
                      DataCell(Text("Travilling ")),
                    ]),
                    DataRow(cells: <DataCell>[
                      DataCell(Text(
                        "Date of providing request ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: themeColorDarkest,
                        ),
                      )),
                      DataCell(Text("12/2/2020 ")),
                    ]),
                    DataRow(cells: <DataCell>[
                      DataCell(Text(
                        "Program ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: themeColorDarkest,
                        ),
                      )),
                      DataCell(Text("PHD")),
                    ]),
                    DataRow(cells: <DataCell>[
                      DataCell(Text(
                        "Department",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: themeColorDarkest,
                        ),
                      )),
                      DataCell(Text("Software engneering ")),
                    ]),
                    DataRow(cells: <DataCell>[
                      DataCell(Text(
                        "Duration ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: themeColorDarkest,
                        ),
                      )),
                      DataCell(Text("Semester ")),
                    ]),
                    DataRow(cells: <DataCell>[
                      DataCell(Text(
                        "Request state ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: themeColorDarkest,
                        ),
                      )),
                      DataCell(Text(
                        "Accepted",
                      )),
                    ]),
                    DataRow(cells: <DataCell>[
                      DataCell(Text(
                        "College Board Number ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: themeColorDarkest,
                        ),
                      )),
                      DataCell(Text("338208")),
                    ]),
                    DataRow(cells: <DataCell>[
                      DataCell(Text(
                        "Higer studies Board Number ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: themeColorDarkest,
                        ),
                      )),
                      DataCell(Text("451813")),
                    ]),
                    DataRow(cells: <DataCell>[
                      DataCell(Text(
                        "Date of responce",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: themeColorDarkest,
                        ),
                      )),
                      DataCell(Text("24/12/2020")),
                    ]),
                    DataRow(cells: <DataCell>[
                      DataCell(Text(
                        "Note",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: themeColorDarkest,
                        ),
                      )),
                      DataCell(Text(
                        " ___",
                      )),
                    ]),
                  ]),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.mode_edit,
                    color: themeColorDarkest,
                  ),
                )
              ],
            ),
          ]),
        ));

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
