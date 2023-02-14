import 'package:flutter/material.dart';
import 'package:request/constans/colors.dart';
import 'package:request/screens/widgets/desk_tap_sideBar.dart';
import 'package:request/screens/widgets/my_appbar.dart';
import 'package:request/screens/widgets/my_sideBar.dart';

class ResearchesDetails extends StatelessWidget {
  const ResearchesDetails({super.key});

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    return Scaffold(

        // drawer: MySideBar(size: size),,
        backgroundColor: Color.fromARGB(255, 245, 244, 244),
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
                      'Researches details ',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 245, 244, 244),
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
                                "Type of supervision",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: themeColorDarkest,
                                ),
                              ),
                            ),
                            DataColumn(
                                label: Text(
                              "Title of research",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: themeColorDarkest,
                              ),
                            )),
                            DataColumn(
                                label: Text(
                              "Student name",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: themeColorDarkest,
                              ),
                            )),
                            DataColumn(
                                label: Text(
                              "Start date",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: themeColorDarkest,
                              ),
                            )),
                            DataColumn(
                                label: Text(
                              "Completion date",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: themeColorDarkest,
                              ),
                            )),
                            DataColumn(
                                label: Text(
                              "Action",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: themeColorDarkest,
                              ),
                            )),
                          ], rows: <DataRow>[
                            DataRow(cells: <DataCell>[
                              const DataCell(
                                Text(
                                  "Co-supervisor",
                                ),
                              ),
                              const DataCell(
                                  Text("Fault detection in software")),
                              const DataCell(Text("Amel Abdulazim alameen")),
                              const DataCell(Text("20-6-2022")),
                              const DataCell(Text("3-11-2022")),
                              DataCell(Row(
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.edit),
                                    onPressed: () {},
                                  ),
                                  const SizedBox(
                                    width: 3.0,
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.delete),
                                    onPressed: () {},
                                  )
                                ],
                              )),
                            ]),
                            DataRow(cells: <DataCell>[
                              const DataCell(
                                Text(
                                  "Main supervisor",
                                ),
                              ),
                              const DataCell(
                                  Text("Enhancement in MOOD metrics")),
                              const DataCell(Text("Logain Mohammed merghany")),
                              const DataCell(Text("20-4-2022")),
                              const DataCell(Text("3-8-2022")),
                              DataCell(Row(
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.edit),
                                    onPressed: () {},
                                  ),
                                  const SizedBox(
                                    width: 3.0,
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.delete),
                                    onPressed: () {},
                                  )
                                ],
                              )),
                            ]),
                            DataRow(cells: <DataCell>[
                              const DataCell(
                                Text(
                                  "Main supervisor",
                                ),
                              ),
                              const DataCell(
                                  Text("evaluate and improve model ")),
                              const DataCell(Text("Sara Ibraheem Elshaikh")),
                              const DataCell(Text("10-4-2022")),
                              const DataCell(Text("3-8-2022")),
                              DataCell(Row(
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.edit),
                                    onPressed: () {},
                                  ),
                                  const SizedBox(
                                    width: 3.0,
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.delete),
                                    onPressed: () {},
                                  )
                                ],
                              )),
                            ]),
                            DataRow(cells: <DataCell>[
                              const DataCell(
                                Text(
                                  "Co-supervisor",
                                ),
                              ),
                              const DataCell(
                                  Text("propose  genetic algorithm ")),
                              const DataCell(Text("Romisaa omer musa")),
                              const DataCell(Text("13-9-2022")),
                              const DataCell(Text("3-12-2022")),
                              DataCell(Row(
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.edit),
                                    onPressed: () {},
                                  ),
                                  const SizedBox(
                                    width: 3.0,
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.delete),
                                    onPressed: () {},
                                  )
                                ],
                              )),
                            ]),
                            DataRow(cells: <DataCell>[
                              const DataCell(
                                Text(
                                  "Main supervisor",
                                ),
                              ),
                              const DataCell(
                                  Text("propose  genetic algorithm ")),
                              const DataCell(Text("Omnia Abdulgadir")),
                              const DataCell(Text("13-7-2022")),
                              const DataCell(Text("3-10-2022")),
                              DataCell(Row(
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.edit),
                                    onPressed: () {},
                                  ),
                                  const SizedBox(
                                    width: 3.0,
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.delete),
                                    onPressed: () {},
                                  )
                                ],
                              )),
                            ]),
                          ]),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            ],
          ),
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
