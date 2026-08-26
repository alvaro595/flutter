import 'package:flutter/material.dart';
import 'pages/main_page.dart';

void main() {
  runApp(const CompanyProfilepp());
}

class CompanyProfilepp extends StatelessWidget {
  const CompanyProfilepp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Perusahaan Maple",
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const MainPage(),
    );
  }
}