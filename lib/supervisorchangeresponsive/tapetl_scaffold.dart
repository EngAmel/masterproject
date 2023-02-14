import 'package:flutter/material.dart';
import 'package:request/constans/colors.dart';
import 'package:request/screens/supervisor_change_details.dart';
import 'package:request/screens/widgets/mytapletetextfild.dart';
import 'package:request/screens/widgets/mytextfield.dart';
import 'package:request/screens/widgets/thebtn.dart';

class TapleteSupervisorchangeForm extends StatefulWidget {
  const TapleteSupervisorchangeForm({super.key});

  @override
  State<TapleteSupervisorchangeForm> createState() =>
      _TapleteSupervisorchangeFormState();
}

class _TapleteSupervisorchangeFormState
    extends State<TapleteSupervisorchangeForm> {
  _TapleteSupervisorchangeFormState() {
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
    return Scaffold(
        appBar: AppBar(
          title: const Text(" Request Form"),
          backgroundColor: themeColorDarkest,
        ),
        drawer: const Drawer(),
        body: Center(
          child: Container(
            width: 800,
            padding: const EdgeInsets.all(50.0),
            child: ListView(children: [
              const Text(
                'Supervisor change request Form',
                style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IntrinsicHeight(
                        child: Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  MyTapleteTextField(
                                    fiedName: "The name of the applicant",
                                    myController: _applicantnamecontroller,
                                    myIcon: Icons.person,
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  MyTapleteTextField(
                                    fiedName: "Previous supervisor",
                                    myController: _previoussupervisorcontroller,
                                    myIcon: Icons.person,
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  MyTapleteTextField(
                                    fiedName: "New supervisor",
                                    myController: _newsupervisorcontroller,
                                    myIcon: Icons.person,
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  SizedBox(
                                    width: 300,
                                    child: DropdownButtonFormField(
                                      isExpanded: true,
                                      value: _selectedvalue,
                                      items: _programList.map((e) {
                                        return DropdownMenuItem(
                                          value: e,
                                          child: Text(
                                            e,
                                          ),
                                        );
                                      }).toList(),
                                      onChanged: (val) {
                                        setState(() {
                                          _selectedvalue = val;
                                        });
                                      },
                                      icon: const Icon(
                                        Icons.arrow_drop_down_circle_rounded,
                                        color: themeColorDarkest,
                                      ),
                                      dropdownColor: themeColorDark,
                                      decoration: const InputDecoration(
                                          labelText: "Select program",
                                          border: OutlineInputBorder()),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 300,
                                    child: DropdownButtonFormField(
                                      value: _selectedvalue2,
                                      items: _departmentList.map((e) {
                                        return DropdownMenuItem(
                                          value: e,
                                          child: Text(
                                            e,
                                          ),
                                        );
                                      }).toList(),
                                      onChanged: (val) {
                                        setState(() {
                                          _selectedvalue2 = val;
                                        });
                                      },
                                      icon: const Icon(
                                        Icons.arrow_drop_down_circle_rounded,
                                        color: themeColorDarkest,
                                      ),
                                      dropdownColor: themeColorDark,
                                      decoration: const InputDecoration(
                                          labelText: "Select department",
                                          border: OutlineInputBorder()),
                                    ),
                                  ),
                                ],
                              )),
                              const VerticalDivider(
                                thickness: 1.0,
                                width: 100,
                                color: themeColorDark,
                                indent: 30.0,
                                endIndent: 25.0,
                              ),
                              Expanded(
                                  child: Column(
                                children: [
                                  MyTapleteTextField(
                                    fiedName: "Date of providing request",
                                    myController: _providingdatecontroller,
                                    myIcon: Icons.calendar_month,
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  MyTapleteTextField(
                                    fiedName: "Reason of changing Request",
                                    myController: _resonOffchangingcontroller,
                                    myIcon: Icons.question_answer,
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  MyTapleteTextField(
                                    fiedName: "Previous supervisor report",
                                    myController: _previoussupervisorcontroller,
                                    myIcon: Icons.question_answer,
                                    //مفروض يتعبا تلقائي من شاشة المشرف
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  MyTapleteTextField(
                                    fiedName: "New supervisor report",
                                    myController: _newsupervisorcontroller,
                                    myIcon: Icons.question_answer,
                                    //مفروض يتعبا تلقائي من شاشة المشرف الطلب بيظهر ليهو هو لو موافق بيعمل جك ويكتب التقرير الاكاديمي
                                  ),
                                ],
                              )),
                            ],
                          ),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                              width: 300,
                                              child: DropdownButtonFormField(
                                                isExpanded: true,
                                                value: _selectedvalue4,
                                                items:
                                                    _requestStateList.map((e) {
                                                  return DropdownMenuItem(
                                                    value: e,
                                                    child: Text(
                                                      e,
                                                    ),
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
                                                    border:
                                                        OutlineInputBorder()),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 20.0,
                                            ),
                                            MyTapleteTextField(
                                              fiedName: "College Board Number",
                                              myController:
                                                  _collageboardnumbercontroller,
                                              myIcon: Icons.verified_user,
                                            ),
                                            const SizedBox(
                                              height: 20.0,
                                            ),
                                            MyTapleteTextField(
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
                                        width: 100,
                                        color: themeColorDark,
                                        indent: 10.0,
                                        endIndent: 10.0,
                                      ),
                                      Expanded(
                                          child: Column(
                                        children: [
                                          MyTapleteTextField(
                                            fiedName: "Date of result",
                                            myController:
                                                _dateofresultcontroller,
                                            myIcon: Icons.calendar_month,
                                          ),
                                          const SizedBox(
                                            height: 10.0,
                                          ),
                                          MyTapleteTextField(
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
                            return SupervisorChangeDetails();
                          }));
                        },
                      )
                    ],
                  )),
            ]),
          ),
        ));
  }
}
