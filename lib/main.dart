import 'package:flutter/material.dart';
import 'package:portfolio_website_app/constants.dart';
import 'package:portfolio_website_app/screens/home/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
          .apply(bodyColor: Colors.white)
          .copyWith(
          bodyLarge:const TextStyle(color:bodyTextColor),
          bodyMedium:const TextStyle(color: bodyTextColor),
        )
      ),
      home: HomeScreen(),
    );
  }
}
