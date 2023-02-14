import 'package:flutter/material.dart';

import 'package:request/screens/dashboard.dart';
import 'package:request/screens/freez_form.dart';
import 'package:request/screens/login_layout.dart';
import 'package:request/screens/other_form.dart';
import 'package:request/screens/searchtitle_change_requst.dart';
import 'package:request/screens/students/add_students.dart';
import 'package:request/screens/students/students_details.dart';
import 'package:request/screens/supervisor/add_supervaisor.dart';
import 'package:request/screens/supervisor/supervisor_details.dart';
import 'package:request/screens/supervisor/supervisor_main_screen.dart';

import 'package:request/screens/supervisor_change_request.dart';

import 'package:request/supervisorchangeresponsive/mopil_scaffold.dart';
import 'package:request/supervisorchangeresponsive/responcive_layout.dart';
import 'package:request/supervisorchangeresponsive/tapetl_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Higher studies college',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: const Dashboard(),
    );
  }
}
