import 'package:flutter/material.dart';
import 'package:syncopate/dashboard/widgets/status_bar.dart';

import 'file_list.dart';
import 'header.dart';
import 'input_bar.dart';
import 'tool_bar.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const Header(),
              InputBar(formKey: _formKey,),
              Toolbar(formKey: _formKey,),
              const Expanded(child: FileList(),),
              const StatusBar(),
            ],
          ),
        ),
      ),
    );
  }
}
