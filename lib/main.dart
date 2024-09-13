import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_content/Dashboard.dart';
import 'package:social_content/Otpscreen.dart';
import 'package:social_content/listview_example.dart';
import 'package:social_content/loginscreen.dart';
import 'package:social_content/onboarding.dart';
import 'package:social_content/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            textTheme: GoogleFonts.outfitTextTheme()),
        home: DashboardClass());
  }
}
