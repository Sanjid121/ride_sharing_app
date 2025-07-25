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
      body: Column(
        children: [
          appbar(context, 'care'),
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
                padding: const EdgeInsets.only(left: 22,right: 16),
                child: Row(
                  spacing: 16,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    pars_card(),
                    
                    pars_card(),      
                    pars_card()
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
