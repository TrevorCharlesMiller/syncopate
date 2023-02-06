import 'package:flutter/material.dart';
import 'package:syncopate/constants/text_styles.dart';

import 'constants/colors.dart';
import 'dashboard/widgets/dashboard_page.dart';

class SyncopateApp extends StatelessWidget {
  const SyncopateApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Syncopate',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: fontMontserrat,
        scaffoldBackgroundColor:  appBackground,
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue,
            brightness: Brightness.light,),
      ),
      home: const DashboardPage(),
    );
  }
}
