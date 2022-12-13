import 'package:flutter/material.dart';

import 'features/dashboard/dashboard_page.dart';

class StreamApp extends StatelessWidget {
  final String titleApp;

  const StreamApp({super.key, required this.titleApp});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: titleApp,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xff0F0F17),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff0F0F17),
          elevation: 0,
        ),
      ),
      home: const DashboardPage(),
    );
  }
}
