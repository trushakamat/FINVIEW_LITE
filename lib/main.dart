import 'package:flutter/material.dart';
import 'view/dashboard/dashboardview.dart';

void main() {
  runApp(const FinViewApp());
}

class FinViewApp extends StatelessWidget {
  const FinViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FinView Lite',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        useMaterial3: true,
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: Colors.grey[50],
      ),
      home: const DashboardView(),
    );
  }
}