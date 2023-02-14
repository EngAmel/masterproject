import 'package:flutter/material.dart';
import 'package:request/constans/colors.dart';
import 'package:request/screens/supervisor_change_details.dart';
import 'package:request/screens/widgets/desk_tap_sideBar.dart';
import 'package:request/screens/widgets/my_appbar.dart';
import 'package:request/screens/widgets/my_sideBar.dart';
import 'package:request/screens/widgets/mytextfield.dart';
import 'package:request/screens/widgets/thebtn.dart';

import 'students_details.dart';

class AddStudentrForm extends StatefulWidget {
  const AddStudentrForm({super.key});

  @override
  State<AddStudentrForm> createState() => _AddStudentrFormState();
}

class _AddStudentrFormState extends State<AddStudentrForm> {
  _AddStudentrFormState() {
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

  List<bool> _isOpen = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

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
              SizedBox(width: 300, child: SideBar()),
              Center(
                child: Container(
                  width: 1200,
                  padding: const EdgeInsets.all(50.0),
                  child: ListView(children: [
                    const Text(
                      'Add Student Form',
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
                                          'Student data',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 18.0),
                                          textAlign: TextAlign.right,
                                        ),
                                        const SizedBox(
                                          height: 50.0,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 50.0),
                                          child: MyTextField(
                                            fiedName: "Student university ID ",
                                            myController:
                                                _applicantnamecontroller,
                                            myIcon: Icons.card_membership,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20.0,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 50.0),
                                          child: MyTextField(
                                            fiedName: "Student name",
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
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 50.0),
                                              child: SizedBox(
                                                width: 220,
                                                child: DropdownButtonFormField(
                                                  value: _selectedvalue,
                                                  items: _programList.map((e) {
                                                    return DropdownMenuItem(
                                                      value: e,
                                                      child: Text(e),
                                                    );
                                                  }).toList(),
                                                  onChanged: (val) {
                                                    setState(() {
                                                      _selectedvalue = val;
                                                    });
                                                  },
                                                  icon: const Icon(
                                                    Icons
                                                        .arrow_drop_down_circle_rounded,
                                                    color: themeColorDarkest,
                                                  ),
                                                  dropdownColor: themeColorDark,
                                                  decoration: const InputDecoration(
                                                      labelText:
                                                          "Select program",
                                                      border:
                                                          OutlineInputBorder()),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            SizedBox(
                                              width: 220,
                                              child: DropdownButtonFormField(
                                                value: _selectedvalue2,
                                                items: _departmentList.map((e) {
                                                  return DropdownMenuItem(
                                                    value: e,
                                                    child: Text(e),
                                                  );
                                                }).toList(),
                                                onChanged: (val) {
                                                  setState(() {
                                                    _selectedvalue2 = val;
                                                  });
                                                },
                                                icon: const Icon(
                                                  Icons
                                                      .arrow_drop_down_circle_rounded,
                                                  color: themeColorDarkest,
                                                ),
                                                dropdownColor: themeColorDark,
                                                decoration: const InputDecoration(
                                                    labelText:
                                                        "Select department",
                                                    border:
                                                        OutlineInputBorder()),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20.0,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 50.0),
                                          child: MyTextField(
                                            fiedName: "Main supervisor name",
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
                                            fiedName: "Co-supervisor name",
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
                                            fiedName: "Research title",
                                            myController:
                                                _applicantnamecontroller,
                                            myIcon: Icons.book,
                                          ),
                                        ),
                                      ],
                                    )),
                                    const VerticalDivider(
                                      thickness: 1.0,
                                      width: 80,
                                      color: themeColorDark,
                                      indent: 150.0,
                                      endIndent: 25.0,
                                    ),
                                    Expanded(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 150,
                                        ),
                                        const Text(
                                          'Acceptance Data',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 18.0),
                                          textAlign: TextAlign.right,
                                        ),
                                        const SizedBox(
                                          height: 50.0,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 50.0),
                                          child: SizedBox(
                                            width: 220,
                                            child: DropdownButtonFormField(
                                              value: _selectedvalue4,
                                              items: _requestStateList.map((e) {
                                                return DropdownMenuItem(
                                                  value: e,
                                                  child: Text(e),
                                                );
                                              }).toList(),
                                              onChanged: (val) {
                                                setState(() {
                                                  _selectedvalue4 = val;
                                                });
                                              },
                                              icon: const Icon(
                                                Icons
                                                    .arrow_drop_down_circle_rounded,
                                                color: themeColorDarkest,
                                              ),
                                              dropdownColor: themeColorDark,
                                              decoration: const InputDecoration(
                                                  labelText: "Request State",
                                                  border: OutlineInputBorder()),
                                            ),
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
                                                "Proposal acceptance date",
                                            myController:
                                                _dateofresultcontroller,
                                            myIcon: Icons.calendar_month,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20.0,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 50.0),
                                          child: MyTextField(
                                            fiedName: "Deadline for delivery",
                                            myController:
                                                _dateofresultcontroller,
                                            myIcon: Icons.calendar_month,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20.0,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 50.0),
                                          child: MyTextField(
                                            fiedName: "Note",
                                            myController: _notecontroller,
                                            myIcon: Icons.verified_user,
                                            maxlin: 5,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20.0,
                                        ),
                                        // incase acceptance
                                        const Padding(
                                          padding: EdgeInsets.only(left: 50.0),
                                          child: Text(
                                            'in case PHd',
                                            style: TextStyle(
                                                fontSize: 14.0,
                                                color: Color.fromARGB(
                                                    255, 211, 45, 34)),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 50.0),
                                          child: MyTextField(
                                            fiedName: "Five Committee ",
                                            myController:
                                                _providingdatecontroller,
                                            myIcon: Icons.verified_user,
                                          ),
                                        ), // incase PHD
                                        const SizedBox(
                                          height: 20.0,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 50.0),
                                          child: MyTextField(
                                            fiedName:
                                                "Specialized council number",
                                            myController:
                                                _providingdatecontroller,
                                            myIcon: Icons.verified_user,
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
                                                "Collage research council number",
                                            myController:
                                                _providingdatecontroller,
                                            myIcon: Icons.verified_user,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20.0,
                                        ),

                                        const Padding(
                                          padding: EdgeInsets.only(left: 50.0),
                                          child: Text(
                                            'in case Master by search',
                                            style: TextStyle(
                                                fontSize: 14.0,
                                                color: Color.fromARGB(
                                                    255, 211, 45, 34)),
                                          ),
                                        ),

                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 50.0),
                                          child: MyTextField(
                                            fiedName: " Council number",
                                            myController:
                                                _providingdatecontroller,
                                            myIcon: Icons.verified_user,
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
                                  return const StudentdetailsForm();
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
