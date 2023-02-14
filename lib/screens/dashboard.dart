import 'package:flutter/material.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';
import 'package:request/screens/widgets/my_appbar.dart';
import 'package:request/screens/widgets/responce_details.dart';
import 'package:table_calendar/table_calendar.dart';

import 'package:request/constans/colors.dart';
import 'package:request/screens/supervisor/add_supervaisor.dart';
import 'package:request/screens/supervisor/supervisor_main_screen.dart';
import 'package:request/screens/widgets/desk_tap_sideBar.dart';
import 'package:request/screens/widgets/infocard.dart';
import 'package:request/screens/widgets/my_sideBar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  DateTime today = DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

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
                flex: 3,
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
                            Text(
                              "Request notifications",
                              style: TextStyle(
                                  color: active, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: const ResponceDetails(),
                            )
                          ],
                        ),
                      ),
                    )),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: SizedBox(
                      width: 300,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Text(" Selected day is :" +
                          //     today.toString().split(" ")[0]),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            width: 300,
                            child: TableCalendar(
                              headerStyle: const HeaderStyle(
                                  formatButtonVisible: false,
                                  titleCentered: true),
                              availableGestures: AvailableGestures.all,
                              selectedDayPredicate: (day) =>
                                  isSameDay(day, today),
                              focusedDay: today,
                              firstDay: DateTime.utc(2010, 10, 16),
                              lastDay: DateTime.utc(2023, 3, 14),
                              onDaySelected: _onDaySelected,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Text(
                            "Available programs:",
                            style: TextStyle(
                                color: Colors.lightGreen,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: SizedBox(
                              width: 300.0,
                              child: DataTable(columns: const <DataColumn>[
                                DataColumn(
                                  label: Text(
                                    "Program type",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: themeColorDarkest,
                                    ),
                                  ),
                                ),
                                DataColumn(
                                    label: Text(
                                  "Date of start",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: themeColorDarkest,
                                  ),
                                )),
                              ], rows: const <DataRow>[
                                DataRow(cells: <DataCell>[
                                  DataCell(
                                    Text(
                                      "Mastr by course",
                                    ),
                                  ),
                                  DataCell(Text("1/1/2023")),
                                ]),
                                DataRow(cells: <DataCell>[
                                  DataCell(
                                    Text(
                                      "Mastr by search",
                                    ),
                                  ),
                                  DataCell(Text("1/1/2023")),
                                ]),
                                DataRow(cells: <DataCell>[
                                  DataCell(
                                    Text(
                                      "PHD by search",
                                    ),
                                  ),
                                  DataCell(Text("1/1/2023")),
                                ]),
                                DataRow(cells: <DataCell>[
                                  DataCell(
                                    Text(
                                      "Mastr by course",
                                    ),
                                  ),
                                  DataCell(Text("1/1/2023")),
                                ]),
                              ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ))),
    );
  }
}
