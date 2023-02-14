import 'package:flutter/material.dart';
import 'package:request/constans/colors.dart';
import 'package:request/screens/supervisor_change_details.dart';
import 'package:request/screens/widgets/desk_tap_sideBar.dart';
import 'package:request/screens/widgets/my_appbar.dart';
import 'package:request/screens/widgets/mytextfield.dart';
import 'package:request/screens/widgets/thebtn.dart';

import 'supervisor_details.dart';

class AddSupervisorForm extends StatefulWidget {
  const AddSupervisorForm({super.key});

  @override
  State<AddSupervisorForm> createState() => _AddSupervisorFormState();
}

class _AddSupervisorFormState extends State<AddSupervisorForm> {
  _AddSupervisorFormState() {
    _selectedvalue = _programList[0];
    _selectedvalue2 = _departmentList[0];

    _selectedvalue4 = _requestStateList[0];
  }

  var _applicantname;
  final _applicantnamecontroller = TextEditingController();
  var _resonOffchanging;
  final _resonOffchangingcontroller = TextEditingController();
  var _providingdate;
  final _providingdatecontroller = TextEditingController();
  var _collageboardnumber;
  final _collageboardnumbercontroller = TextEditingController();
  var _higherboardnumber;
  final _higherboardnumbercontroller = TextEditingController();
  var _dateofresult;
  final _dateofresultcontroller = TextEditingController();
  var _note;
  final _notecontroller = TextEditingController();
  var _previoussupervisor;
  final _previoussupervisorcontroller = TextEditingController();
  var _newsupervisor;
  final _newsupervisorcontroller = TextEditingController();

  final _programList = ["PHD", "Master by course", "Master By researsh"];
  final _departmentList = [
    "Software engneering ",
    "Computer sience",
    "Information technology",
    "Master By researsh"
  ];

  final _requestStateList = ["On wating", "Accepted", "Rejected"];
  String? _selectedvalue = "";
  String? _selectedvalue2 = "";

  String? _selectedvalue4 = "";
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _applicantnamecontroller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
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
                      'Add Supervisor Form',
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
                    Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            IntrinsicHeight(
                              child: Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return SupervisorChangeDetails();
                                            }));
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                right: 50.0, bottom: 30.0),
                                            height: 120.0,
                                            width: 120.0,
                                            alignment: Alignment.topRight,
                                            decoration: BoxDecoration(
                                                color: const Color.fromARGB(
                                                    255, 245, 244, 244),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: Colors.black54),
                                                image: const DecorationImage(
                                                  image: AssetImage(
                                                    "assets/images/783652-200.png",
                                                  ),
                                                )),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 30.0,
                                        ),
                                        const Text(
                                          'Personal data',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                          textAlign: TextAlign.right,
                                        ),
                                        const SizedBox(
                                          height: 50.0,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 50.0),
                                          child: MyTextField(
                                            fiedName: "Supervisor name",
                                            myController:
                                                _applicantnamecontroller,
                                            myIcon: Icons.person,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20.0,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 50.0),
                                          child: MyTextField(
                                            fiedName: "Email",
                                            myController:
                                                _previoussupervisorcontroller,
                                            myIcon: Icons.email,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20.0,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 50.0),
                                          child: MyTextField(
                                            fiedName: "Address",
                                            myController:
                                                _newsupervisorcontroller,
                                            myIcon: Icons.location_pin,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20.0,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 50.0),
                                          child: MyTextField(
                                            fiedName: "Phone number",
                                            myController:
                                                _providingdatecontroller,
                                            myIcon: Icons.phone,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20.0,
                                        ),
                                      ],
                                    )),
                                    Expanded(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 150,
                                        ),
                                        const Text(
                                          'Academic qualification',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                          textAlign: TextAlign.right,
                                        ),
                                        const SizedBox(
                                          height: 50.0,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 50.0),
                                          child: MyTextField(
                                            fiedName:
                                                "Bachelor / university/ Department",
                                            myController:
                                                _providingdatecontroller,
                                            myIcon: Icons.school,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20.0,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 50.0),
                                          child: MyTextField(
                                            fiedName:
                                                "Master / university/ Department",
                                            myController:
                                                _providingdatecontroller,
                                            myIcon: Icons.school,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20.0,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 50.0),
                                          child: MyTextField(
                                            fiedName:
                                                "PHD / university/ Department",
                                            myController:
                                                _providingdatecontroller,
                                            myIcon: Icons.school,
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
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const Supervisordetails();
                                }));
                              },
                            )
                          ],
                        )),
                  ]),
                ),
              ),
            ],
          ),
        ));
  }
}
