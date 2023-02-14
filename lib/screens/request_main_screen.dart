import 'package:flutter/material.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';
import 'package:request/screens/widgets/my_appbar.dart';
import 'package:request/screens/widgets/mytextfield.dart';
import 'package:request/screens/widgets/responce_details.dart';
import 'package:request/screens/widgets/thebtn.dart';
import 'package:table_calendar/table_calendar.dart';

import 'package:request/constans/colors.dart';
import 'package:request/screens/supervisor/add_supervaisor.dart';
import 'package:request/screens/supervisor/supervisor_main_screen.dart';
import 'package:request/screens/widgets/desk_tap_sideBar.dart';
import 'package:request/screens/widgets/infocard.dart';
import 'package:request/screens/widgets/my_sideBar.dart';

class AllRequests extends StatefulWidget {
  const AllRequests({super.key});

  @override
  State<AllRequests> createState() => _AllRequestsState();
}

class _AllRequestsState extends State<AllRequests> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          appBar: topNavigationBar(context, scaffoldKey),
          body: SafeArea(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 300, child: SideBar()),
              Expanded(
                child: Container(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: SingleChildScrollView(
                      child: Container(
                        width: 800,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // Flexible(
                                //     child: Card(
                                //   child: Padding(
                                //     padding: const EdgeInsets.all(18.0),
                                //     child: Column(
                                //       children: [
                                //         Row(
                                //           children: const [
                                //             Icon(
                                //               Icons.article,
                                //               size: 26.0,
                                //             ),
                                //             SizedBox(
                                //               width: 15,
                                //             ),
                                //             Text(
                                //               "Articals",
                                //               style: TextStyle(
                                //                   fontSize: 26,
                                //                   fontWeight: FontWeight.bold),
                                //             )
                                //           ],
                                //         ),
                                //         const SizedBox(
                                //           height: 20.0,
                                //         ),
                                //       ],
                                //     ),
                                //   ),
                                // ))
                              ],
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              children: [
                                InfoCard(
                                  title: "On wating Requsts",
                                  value: "7",
                                  onTap: () {},
                                  topColor: Colors.orange,
                                ),
                                SizedBox(
                                  width: _width / 64,
                                ),
                                InfoCard(
                                  title: "accepted requests",
                                  value: "17",
                                  topColor: Colors.lightGreen,
                                  onTap: () {},
                                ),
                                SizedBox(
                                  width: _width / 64,
                                ),
                                InfoCard(
                                  title: "Rejected requests",
                                  value: "3",
                                  topColor: Colors.redAccent,
                                  onTap: () {},
                                ),
                                SizedBox(
                                  width: _width / 64,
                                ),
                                InfoCard(
                                  title: "Requests",
                                  value: "32",
                                  onTap: () {},
                                  topColor: active,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Request notifications",
                                  style: TextStyle(
                                      color: active,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 600,
                                ),
                                const MyTextField(
                                  fiedName: "Applicant request",
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
                            const SizedBox(
                              height: 20.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(15.0),
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
                                    child:
                                        DataTable(columns: const <DataColumn>[
                                      DataColumn(
                                        label: Text(
                                          "Type of request",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: themeColorDarkest,
                                          ),
                                        ),
                                      ),
                                      DataColumn(
                                          label: Text(
                                        "    Request Applicant",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: themeColorDarkest,
                                        ),
                                      )),
                                      DataColumn(
                                          label: Text(
                                        "    Date of aplling",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: themeColorDarkest,
                                        ),
                                      )),
                                      DataColumn(
                                          label: Text(
                                        "   Request status",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: themeColorDarkest,
                                        ),
                                      )),
                                      DataColumn(
                                          label: Text(
                                        "     Action",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: themeColorDarkest,
                                        ),
                                      )),
                                    ], rows: <DataRow>[
                                      DataRow(cells: <DataCell>[
                                        const DataCell(
                                          Text(
                                            "     Freezing request",
                                          ),
                                        ),
                                        const DataCell(
                                            Text("Amel Abdulazim alameen")),
                                        const DataCell(Text("      20-6-2022")),
                                        DataCell(MyBtn(
                                          backgroundClr: Colors.green,
                                          padd: 0.0,
                                          mychild: const Text("Accepted"),
                                          myshape: BoxShape.circle,
                                          myheight: 50,
                                          mywidth: 150,
                                          onPress: () {},
                                        )),
                                        DataCell(Row(
                                          children: [
                                            IconButton(
                                              icon: const Icon(
                                                  Icons.view_headline_rounded),
                                              onPressed: () {},
                                            ),
                                            const SizedBox(
                                              width: 3.0,
                                            ),
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
                                            "     Supervisor change request",
                                          ),
                                        ),
                                        const DataCell(
                                            Text("Logain Mohammed merghany")),
                                        const DataCell(Text("      20-4-2022")),
                                        DataCell(MyBtn(
                                          backgroundClr: Colors.red,
                                          padd: 0.0,
                                          mychild: const Text("Rejected"),
                                          myshape: BoxShape.circle,
                                          myheight: 50,
                                          mywidth: 150,
                                          onPress: () {},
                                        )),
                                        DataCell(Row(
                                          children: [
                                            IconButton(
                                              icon: const Icon(
                                                  Icons.view_headline_rounded),
                                              onPressed: () {},
                                            ),
                                            const SizedBox(
                                              width: 3.0,
                                            ),
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
                                            "      Unfreezing request",
                                          ),
                                        ),
                                        const DataCell(
                                            Text("Sara Ibraheem Elshaikh")),
                                        const DataCell(Text("      10-4-2022")),
                                        DataCell(MyBtn(
                                          backgroundClr: Colors.amber,
                                          padd: 0.0,
                                          mychild: const Text("On waiting"),
                                          myshape: BoxShape.circle,
                                          myheight: 50,
                                          mywidth: 150,
                                          onPress: () {},
                                        )),
                                        DataCell(Row(
                                          children: [
                                            IconButton(
                                              icon: const Icon(
                                                  Icons.view_headline_rounded),
                                              onPressed: () {},
                                            ),
                                            const SizedBox(
                                              width: 3.0,
                                            ),
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
                                            "       Extension request",
                                          ),
                                        ),
                                        const DataCell(
                                            Text("Romisaa omer musa")),
                                        const DataCell(
                                            Text("       13-9-2022")),
                                        DataCell(MyBtn(
                                          backgroundClr: Colors.green,
                                          padd: 0.0,
                                          mychild: const Text("Accepted"),
                                          myshape: BoxShape.circle,
                                          myheight: 50,
                                          mywidth: 150,
                                          onPress: () {},
                                        )),
                                        DataCell(Row(
                                          children: [
                                            IconButton(
                                              icon: const Icon(
                                                  Icons.view_headline_rounded),
                                              onPressed: () {},
                                            ),
                                            const SizedBox(
                                              width: 3.0,
                                            ),
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
                                            "        Genral request",
                                          ),
                                        ),
                                        const DataCell(
                                            Text("Omnia Abdulgadir")),
                                        const DataCell(Text("      13-7-2022")),
                                        DataCell(MyBtn(
                                          backgroundClr: Colors.amber,
                                          padd: 0.0,
                                          mychild: const Text("On waiting"),
                                          myshape: BoxShape.circle,
                                          myheight: 50,
                                          mywidth: 150,
                                          onPress: () {},
                                        )),
                                        DataCell(Row(
                                          children: [
                                            IconButton(
                                              icon: const Icon(
                                                  Icons.view_headline_rounded),
                                              onPressed: () {},
                                            ),
                                            const SizedBox(
                                              width: 3.0,
                                            ),
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
                                            "     Supervisor change request",
                                          ),
                                        ),
                                        const DataCell(
                                            Text("Logain Mohammed merghany")),
                                        const DataCell(Text("      20-4-2022")),
                                        DataCell(MyBtn(
                                          backgroundClr: Colors.red,
                                          padd: 0.0,
                                          mychild: const Text("Rejected"),
                                          myshape: BoxShape.circle,
                                          myheight: 50,
                                          mywidth: 150,
                                          onPress: () {},
                                        )),
                                        DataCell(Row(
                                          children: [
                                            IconButton(
                                              icon: const Icon(
                                                  Icons.view_headline_rounded),
                                              onPressed: () {},
                                            ),
                                            const SizedBox(
                                              width: 3.0,
                                            ),
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
                                ),
                                const SizedBox(
                                  height: 30.0,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )),
                // ),
                // Expanded(
                //   child: Padding(
                //     padding: const EdgeInsets.all(8.0),
                //     child: SingleChildScrollView(
                //       child: SizedBox(
                //         width: 300,
                //         child: Column(
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             // Text(" Selected day is :" +
                //             //     today.toString().split(" ")[0]),
                //             Container(
                //               margin: EdgeInsets.only(top: 20),
                //               decoration: BoxDecoration(
                //                   color: Colors.white,
                //                   borderRadius: BorderRadius.circular(15.0),
                //                   boxShadow: [
                //                     BoxShadow(
                //                         color: Colors.grey.shade500,
                //                         offset: const Offset(4.0, 4.0),
                //                         blurRadius: 15.0,
                //                         spreadRadius: 1.0),
                //                     const BoxShadow(
                //                         color: Color.fromARGB(255, 245, 244, 244),
                //                         offset: Offset(-4.0, -4.0),
                //                         blurRadius: 15.0,
                //                         spreadRadius: 1.0)
                //                   ]),
                //               width: 300,
                //               child: TableCalendar(
                //                 headerStyle: const HeaderStyle(
                //                     formatButtonVisible: false,
                //                     titleCentered: true),
                //                 availableGestures: AvailableGestures.all,
                //                 selectedDayPredicate: (day) =>
                //                     isSameDay(day, today),
                //                 focusedDay: today,
                //                 firstDay: DateTime.utc(2010, 10, 16),
                //                 lastDay: DateTime.utc(2023, 3, 14),
                //                 onDaySelected: _onDaySelected,
                //               ),
                //             ),
                //             const SizedBox(
                //               height: 20.0,
                //             ),
                //             const Text(
                //               "Available programs:",
                //               style: TextStyle(
                //                   color: Colors.lightGreen,
                //                   fontWeight: FontWeight.bold),
                //             ),
                //             const SizedBox(
                //               height: 20.0,
                //             ),
                //             Container(
                //               decoration: BoxDecoration(
                //                   color: Colors.white,
                //                   borderRadius: BorderRadius.circular(15.0),
                //                   boxShadow: [
                //                     BoxShadow(
                //                         color: Colors.grey.shade500,
                //                         offset: const Offset(4.0, 4.0),
                //                         blurRadius: 15.0,
                //                         spreadRadius: 1.0),
                //                     const BoxShadow(
                //                         color: Color.fromARGB(255, 245, 244, 244),
                //                         offset: Offset(-4.0, -4.0),
                //                         blurRadius: 15.0,
                //                         spreadRadius: 1.0)
                //                   ]),
                //               child: SizedBox(
                //                 width: 300.0,
                //                 child: DataTable(columns: const <DataColumn>[
                //                   DataColumn(
                //                     label: Text(
                //                       "Program type",
                //                       style: TextStyle(
                //                         fontWeight: FontWeight.bold,
                //                         color: themeColorDarkest,
                //                       ),
                //                     ),
                //                   ),
                //                   DataColumn(
                //                       label: Text(
                //                     "Date of start",
                //                     style: TextStyle(
                //                       fontWeight: FontWeight.bold,
                //                       color: themeColorDarkest,
                //                     ),
                //                   )),
                //                 ], rows: const <DataRow>[
                //                   DataRow(cells: <DataCell>[
                //                     DataCell(
                //                       Text(
                //                         "Mastr by course",
                //                       ),
                //                     ),
                //                     DataCell(Text("1/1/2023")),
                //                   ]),
                //                   DataRow(cells: <DataCell>[
                //                     DataCell(
                //                       Text(
                //                         "Mastr by search",
                //                       ),
                //                     ),
                //                     DataCell(Text("1/1/2023")),
                //                   ]),
                //                   DataRow(cells: <DataCell>[
                //                     DataCell(
                //                       Text(
                //                         "PHD by search",
                //                       ),
                //                     ),
                //                     DataCell(Text("1/1/2023")),
                //                   ]),
                //                   DataRow(cells: <DataCell>[
                //                     DataCell(
                //                       Text(
                //                         "Mastr by course",
                //                       ),
                //                     ),
                //                     DataCell(Text("1/1/2023")),
                //                   ]),
                //                 ]),
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
              )
            ],
          ))),
    );
  }
}
