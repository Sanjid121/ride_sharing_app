import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ride_sharing_app/screens/care_page.dart';

import 'screens/home_page.dart';


void main() {
  runApp( MaterialApp(

 debugShowCheckedModeBanner: false,
    home: CarePage(),
    theme: ThemeData(

      textTheme: GoogleFonts.interTextTheme(),
    ),
  ));
}

