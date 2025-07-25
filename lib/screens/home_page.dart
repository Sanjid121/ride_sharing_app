import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'package:ride_sharing_app/screens/widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;



 
 
  @override
  Widget build(BuildContext context) {
    final hiat = MediaQuery.of(context).size.height;
    final waid = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: 
      
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: 
        // app bar start
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              //  app bar start
          appbar(context,'Home'),
            // app bar close
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nearby Users',
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Row(
                      children: [
                        Text(
                          'View all',
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff584cf4),
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          width: 7,
                          height: 12,
                          child: Image.asset('image/Back_button.png'),
                        ),
                      ],
                    ),
                  ),

                  // man('image/Back_button.png', 'okkkkkk', 'kjk', ''),
                ],
              ),
            ),
            SizedBox(height: 21),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 31),
                child: Container(
                  height: 100,
                  // width: waid/10*5,
                  child: Row(
                    spacing: 20,

                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Container(child: desing('Ankita', 'image/wamani.png')),
                      Container(child: desing('Sanjid', 'image/man_i.png')),
                      Container(child: desing('Manish', 'image/woman_ii.png')),
                      Container(child: desing('Suresh', 'image/woman_iii.png')),
                      Container(child: desing('Sumon', 'image/man_iii.png')),
                      Container(child: desing('Antor', 'image/man_i.png')),
                    ],
                  ),
                ),
              ),
            ),

            txtROW('Deals of the Day'),
            SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: waid * 0.4613 - 14,
                        height: 110,
                        child: Image.asset(
                          'image/halmet_1-removebg-preview.png',
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xffEEEEEE),
                            width: 1,
                          ),
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      SizedBox(height: 10),
                      prodact_name(),
                      SizedBox(height: 10),
                      pric_txt(),
                      SizedBox(height: 10),
                      star(),
                    ],
                  ),

                  SizedBox(width: waid * 0.0373),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: waid * 0.4613 - 14,
                        height: 110,
                        child: Image.asset(
                          'image/halmet_2-removebg-preview.png',
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xffEEEEEE),
                            width: 2,
                          ),
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      SizedBox(height: 10),
                      prodact_name(),
                      SizedBox(height: 10),
                      pric_txt(),
                      SizedBox(height: 10),
                      star(),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            txtROW('Upcoming Events'),
            SizedBox(height: 21),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 7,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: waid * 0.384,
                          height: 95.78,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage("image/shimla_to_minal.png"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                          child: horizantal(),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Shimla to Manali',

                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xfff666666),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        width: waid * 0.384,
                        height: 95.78,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage("image/Gujarat.png"),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                        child: horizantal(),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Goa to Gujarat',

                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xfff666666),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: waid * 0.384,
                        height: 95.78,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage("image/Kashmir_2.png"),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                        child: horizantal(),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Kashmir Trip',

                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xfff666666),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 21),
            txtROW('Buy Service Packages'),
            SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: waid * 0.4613 - 14,
                    height: 110,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: AssetImage("image/bike_sarvice.png"),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                  SizedBox(width: waid * 0.0373),
                  Container(
                    width: waid * 0.4613 - 14,
                    height: 110,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: AssetImage("image/bike_parts.png"),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ],
              ),
            ),
     
          ],
        ),
      ),

  
    );
  }
}
