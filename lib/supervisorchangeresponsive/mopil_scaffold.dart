import 'package:flutter/material.dart';
import 'package:request/constans/colors.dart';
import 'package:request/screens/extension_details.dart';
import 'package:request/screens/freez_details.dart';
import 'package:request/screens/widgets/mytextfield.dart';
import 'package:request/screens/widgets/thebtn.dart';

class MopileExtensionRequestForm extends StatefulWidget {
  const MopileExtensionRequestForm({super.key});

  @override
  State<MopileExtensionRequestForm> createState() =>
      _MopileExtensionRequestFormState();
}

class _MopileExtensionRequestFormState
    extends State<MopileExtensionRequestForm> {
  _MopileExtensionRequestFormState() {
    _selectedvalue = _programList[0];
    _selectedvalue2 = _departmentList[0];
    _selectedvalue3 = _supervisorapprovalList[0];
    _selectedvalue4 = _requestStateList[0];
  }

  var _applicantname;
  final _applicantnamecontroller = TextEditingController();
  var _supervisorName;
  final _supervisorNamecontroller = TextEditingController();
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

  bool? _listcheckbox = false;

  final _programList = ["PHD", "Master by course", "Master By researsh"];
  final _departmentList = [
    "Software engneering ",
    "Computer sience",
    "Information technology",
    "Master By researsh"
  ];
  final _supervisorapprovalList = ["Agree", "Dose not agree"];
  final _requestStateList = ["On wating", "Accepted", "Rejected"];
  String? _selectedvalue = "";
  String? _selectedvalue2 = "";
  String? _selectedvalue3 = "";
  String? _selectedvalue4 = "";
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _applicantnamecontroller.dispose();
    _supervisorName.dispose();
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
        body: Container(
            padding: const EdgeInsets.all(50.0),
            child: ListView(
              children: [
                const Text(
                  'Extension Request Form',
                  style: TextStyle(
                      fontSize: 20.0,
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
                      MyTextField(
                        fiedName: " Applicant of Request :",
                        myController: _applicantnamecontroller,
                        myIcon: Icons.person,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      MyTextField(
                        fiedName: "Supervisor Name :",
                        myController: _supervisorNamecontroller,
                        myIcon: Icons.question_answer,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      MyTextField(
                        fiedName: "Date of providing request",
                        myController: _providingdatecontroller,
                        myIcon: Icons.calendar_month,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      DropdownButtonFormField(
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
                          Icons.arrow_drop_down_circle_rounded,
                          color: themeColorDarkest,
                        ),
                        dropdownColor: themeColorDark,
                        decoration: const InputDecoration(
                            labelText: "Select program",
                            border: OutlineInputBorder()),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      DropdownButtonFormField(
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
                          Icons.arrow_drop_down_circle_rounded,
                          color: themeColorDarkest,
                        ),
                        dropdownColor: themeColorDark,
                        decoration: const InputDecoration(
                            labelText: "Select department",
                            border: OutlineInputBorder()),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      DropdownButtonFormField(
                        value: _selectedvalue3,
                        items: _supervisorapprovalList.map((e) {
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
                          Icons.arrow_drop_down_circle_rounded,
                          color: themeColorDarkest,
                        ),
                        dropdownColor: themeColorDark,
                        decoration: const InputDecoration(
                            labelText: "Supervisor Aproval",
                            border: OutlineInputBorder()),
                      ),
                      const Divider(
                        thickness: 1.0,
                        height: 50,
                        color: themeColorDarkest,
                      ),
                      const Text(
                        'Result of request data',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      DropdownButtonFormField(
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
                          Icons.arrow_drop_down_circle_rounded,
                          color: themeColorDarkest,
                        ),
                        dropdownColor: themeColorDark,
                        decoration: const InputDecoration(
                            labelText: "Request State",
                            border: OutlineInputBorder()),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      MyTextField(
                        fiedName: "College Board Number",
                        myController: _collageboardnumbercontroller,
                        myIcon: Icons.verified_user,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      MyTextField(
                        fiedName: "Higher studies Board Number",
                        myController: _higherboardnumbercontroller,
                        myIcon: Icons.verified_user,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      MyTextField(
                        fiedName: "Date of result",
                        myController: _dateofresultcontroller,
                        myIcon: Icons.calendar_month,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Text(
                        'Note',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 20, 19, 19)),
                      ),
                      MyTextField(
                        myController: _notecontroller,
                        maxlin: 5,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      MyBtn(
                        onPress: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const Extensiondetails();
                          }));
                        },
                      )
                    ],
                  ),
                ),
              ],
            )));
  }
}
