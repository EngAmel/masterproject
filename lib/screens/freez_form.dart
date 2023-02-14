import 'package:flutter/material.dart';
import 'package:request/constans/colors.dart';
import 'package:request/screens/freez_details.dart';
import 'package:request/screens/widgets/desk_tap_sideBar.dart';
import 'package:request/screens/widgets/my_appbar.dart';
import 'package:request/screens/widgets/my_sideBar.dart';
import 'package:request/screens/widgets/mytextfield.dart';
import 'package:request/screens/widgets/thebtn.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  _MyFormState() {
    _selectedvalue = _programList[0];
    _selectedvalue2 = _departmentList[0];
    _selectedvalue3 = _deurationList[0];
    _selectedvalue4 = _requestStateList[0];
  }

  var _applicantname;
  final _applicantnamecontroller = TextEditingController();
  var _resonOffreeze;
  final _resonOffreezecontroller2 = TextEditingController();
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

  final _programList = ["PHD", "Master by course", "Master By researsh"];
  final _departmentList = [
    "Software engneering ",
    "Computer sience",
    "Information technology",
    "Master By researsh"
  ];
  final _deurationList = ["Semester", "Year"];
  final _requestStateList = ["On wating", "Accepted", "Rejected"];
  String? _selectedvalue = "";
  String? _selectedvalue2 = "";
  String? _selectedvalue3 = "";
  String? _selectedvalue4 = "";
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _applicantnamecontroller.dispose();
    _resonOffreezecontroller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: topNavigationBar(context, scaffoldKey),
        // drawer: MySideBar(size: size),
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
                      'Freezing request Request Form',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IntrinsicHeight(
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 100.0,
                                      ),
                                      MyTextField(
                                        fiedName: "The name of the applicant",
                                        myController: _applicantnamecontroller,
                                        myIcon: Icons.person,
                                      ),
                                      const SizedBox(
                                        height: 20.0,
                                      ),
                                      MyTextField(
                                        fiedName: "Reson Of freeze",
                                        myController: _resonOffreezecontroller2,
                                        myIcon: Icons.question_answer,
                                      ),
                                    ],
                                  )),
                                  const VerticalDivider(
                                    thickness: 1.0,
                                    width: 80,
                                    color: themeColorDark,
                                    indent: 10.0,
                                    endIndent: 10.0,
                                  ),
                                  Expanded(
                                      child: Padding(
                                    padding: const EdgeInsets.all(40.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        MyTextField(
                                          fiedName: "Date of providing request",
                                          myController:
                                              _providingdatecontroller,
                                          myIcon: Icons.calendar_month,
                                        ),
                                        const SizedBox(
                                          height: 20.0,
                                        ),
                                        Expanded(
                                          child: SizedBox(
                                            width: 400,
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
                                                  labelText: "Select program",
                                                  border: OutlineInputBorder()),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20.0,
                                        ),
                                        Expanded(
                                          child: SizedBox(
                                            width: 400,
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
                                                  border: OutlineInputBorder()),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20.0,
                                        ),
                                        SizedBox(
                                          width: 400,
                                          child: DropdownButtonFormField(
                                            value: _selectedvalue3,
                                            items: _deurationList.map((e) {
                                              return DropdownMenuItem(
                                                value: e,
                                                child: Text(e),
                                              );
                                            }).toList(),
                                            onChanged: (val) {
                                              setState(() {
                                                _selectedvalue3 = val;
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
                                                    "Determine your deuration",
                                                border: OutlineInputBorder()),
                                          ),
                                        )
                                      ],
                                    ),
                                  )),
                                ],
                              ),
                            ),
                            const Divider(
                              thickness: 1.0,
                              height: 50,
                              color: themeColorDark,
                              indent: 10.0,
                              endIndent: 10.0,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Result of request data',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                        textAlign: TextAlign.right,
                                      ),
                                      const SizedBox(
                                        height: 20.0,
                                      ),
                                      IntrinsicHeight(
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    width: 220,
                                                    child:
                                                        DropdownButtonFormField(
                                                      value: _selectedvalue4,
                                                      items: _requestStateList
                                                          .map((e) {
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
                                                        color:
                                                            themeColorDarkest,
                                                      ),
                                                      dropdownColor:
                                                          themeColorDark,
                                                      decoration:
                                                          const InputDecoration(
                                                              labelText:
                                                                  "Request State",
                                                              border:
                                                                  OutlineInputBorder()),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 20.0,
                                                  ),
                                                  MyTextField(
                                                    fiedName:
                                                        "College Board Number",
                                                    myController:
                                                        _collageboardnumbercontroller,
                                                    myIcon: Icons.verified_user,
                                                  ),
                                                  const SizedBox(
                                                    height: 20.0,
                                                  ),
                                                  MyTextField(
                                                    fiedName:
                                                        "Higher studies Board Number",
                                                    myController:
                                                        _higherboardnumbercontroller,
                                                    myIcon: Icons.verified_user,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const VerticalDivider(
                                              thickness: 1.0,
                                              width: 80,
                                              color: themeColorDark,
                                              indent: 10.0,
                                              endIndent: 10.0,
                                            ),
                                            Expanded(
                                                child: Column(
                                              children: [
                                                MyTextField(
                                                  fiedName: "Date of result",
                                                  myController:
                                                      _dateofresultcontroller,
                                                  myIcon: Icons.calendar_month,
                                                ),
                                                const SizedBox(
                                                  height: 10.0,
                                                ),
                                                MyTextField(
                                                  fiedName: "Note",
                                                  myController: _notecontroller,
                                                  myIcon: Icons.verified_user,
                                                  maxlin: 5,
                                                ),
                                              ],
                                            ))
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            MyBtn(
                              onPress: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const Freezingdetails();
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
