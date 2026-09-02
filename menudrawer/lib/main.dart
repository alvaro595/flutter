import 'package:flutter/material.dart';
import '/pages/home_page.dart';
import '/pages/about_page.dart';
import '/pages/contact_page.dart';
import '/pages/gallery_page.dart';
import '/pages/skil_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Menu Navigasi',
      home: const HomePage(),
      routes: {
        '/about':(context) => const AboutPage(),
        '/contact':(context) => const ContactPage(),
        '/gallery':(context) => const GalleryPage(),
        '/skill': (context) => const SkillPage(),
      },
    );
  }
}