import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ride_sharing_app/screens/widget.dart';

class service extends StatefulWidget {
  const service({Key? key}) : super(key: key);

  @override
  _serviceState createState() => _serviceState();
}

class _serviceState extends State<service> {
  @override
  Widget build(BuildContext context) {
    final hiat = MediaQuery.of(context).size.height;
    final waid = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            appbar(context, 'Care'),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bike Name',
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Row(
                      children: [
                        Text(
                          'Change',
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff584cf4),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 13),
            Container(height: 5, width: waid, color: Color(0xfffF3F2FF)),
            Column(
              children: [
                txtROW('Care Recommendations'),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: SizedBox(
                    height: 120,
                    child: ListView(
                                    scrollDirection: Axis.horizontal,
                      children: [
                        pars_card(context, 'Spark Plug', 'image/bike_parsss.png'),
                        SizedBox(width: waid * 0.0382),
                        pars_card(context, 'Clutch Shoe', 'image/ClutchShoe.png'),
                        SizedBox(width: waid * 0.0382),
                        pars_card(context, 'Hose Fuel', 'image/HoseFuel.png'),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                txtROW('Buy Service Packages'),
                SizedBox(height: 18),
                Padding(
                  padding: const EdgeInsets.only(left: 22),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
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
                          prodact_name('Annual Maintenance '),
                          SizedBox(height: 10),
                          pric_txt('₹ 900'),
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
                            prodact_name('Teflon Coating'),
                        SizedBox(height: 10),
                        pric_txt('₹ 1350'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 18,),
              Padding(
                  padding: const EdgeInsets.only(left: 22),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: waid * 0.4613 - 14,
                            height: 110,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: AssetImage("image/bile_chain.png"),
                                fit: BoxFit.fill,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),
                          prodact_name('Annual Maintenance '),
                          SizedBox(height: 10),
                          pric_txt('₹ 900'),
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
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: AssetImage("image/bike_brake.png"),
                                fit: BoxFit.fill,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),
                            prodact_name('Teflon Coating'),
                        SizedBox(height: 10),
                        pric_txt('₹ 1350'),
                        ],
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
