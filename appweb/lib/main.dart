import 'package:appweb/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/home_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Real Estate',
      debugShowCheckedModeBanner: false,
      theme:ThemeData.dark().copyWith
      (
        primaryColor: kPrimaryColor,
        //any scaffold created will be this color
        scaffoldBackgroundColor: kDarkColor,
        canvasColor: kDarkColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
         .apply(bodyColor: Colors.white)
          .copyWith(
          bodyText1: const TextStyle( color: kBodyTextColor),
          bodyText2: const TextStyle( color: kBodyTextColor),

        )

      ),
      home: home_page(),
    );
  }
}


