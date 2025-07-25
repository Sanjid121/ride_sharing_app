import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

txtROW(String txt) {
  return Padding(
    padding: const EdgeInsets.only(left: 16, top: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          txt,
          style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w600),
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
                  fontWeight: FontWeight.w600,
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
  );
}

desing(String txt, String img) {
  return Column(
    children: [
      Container(
        height: 52,
        width: 52,
        child: CircleAvatar(
          backgroundColor: Color(0x0D000000),
          backgroundImage: AssetImage(img),
          radius: 20,
        ),
      ),
      SizedBox(height: 7),
      Text(
        txt,
        style: GoogleFonts.inter(fontSize: 13, fontWeight: FontWeight.w400),
      ),
    ],
  );
}

prodact_name(String txt) {
  return Text(
    txt,
    style: GoogleFonts.inter(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: Color(0xff666666),
    ),
  );
}

star() {
  return Row(
    spacing: 6,
    children: [
      Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          color: Color(0xffFFA000),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: Image.asset('image/Star.png', height: 15, width: 15),
        ),
      ),
      Text(
        '4.8(212)',
        style: GoogleFonts.inter(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Color(0xff888888),
        ),
      ),
    ],
  );
}

pric_txt(String txt) {
  return Row(
    spacing: 7,
    children: [
      Text(
        txt,
        style: GoogleFonts.inter(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: Color(0xff222222),
        ),
      ),
      Text(
        '₹ 5,099',
        style: GoogleFonts.inter(
          fontWeight: FontWeight.w400,
          fontSize: 13,
          color: Color(0xff888888),
        ),
      ),
      Text(
        '20% Off',
        style: GoogleFonts.inter(
          fontWeight: FontWeight.w400,
          fontSize: 12,
          color: Color(0xff584CF4),
        ),
      ),
    ],
  );
}

horizantal() {
  return Align(
    alignment: AlignmentDirectional.bottomStart,
    child: Padding(
      padding: const EdgeInsets.only(left: 5, bottom: 5),
      child: Wrap(
        alignment: WrapAlignment.start,
        crossAxisAlignment: WrapCrossAlignment.start,
        spacing: -10,

        children: [
          Container(
            width: 28.24,
            height: 28.24,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: AssetImage("image/man_i.png"),
                fit: BoxFit.fill,
              ),
              shape: OvalBorder(
                side: BorderSide(width: 1, color: Colors.white),
              ),
            ),
          ),
          Container(
            width: 28.24,
            height: 28.24,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: AssetImage("image/man_i.png"),
                fit: BoxFit.fill,
              ),
              shape: OvalBorder(
                side: BorderSide(width: 1, color: Colors.white),
              ),
            ),
          ),
          Container(
            width: 28.24,
            height: 28.24,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: AssetImage("image/man_i.png"),
                fit: BoxFit.fill,
              ),
              shape: OvalBorder(
                side: BorderSide(width: 1, color: Colors.white),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Text(
                '+12',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ),
            width: 28.24,
            height: 28.24,
            decoration: ShapeDecoration(
              color: Color(0xfff584CF4),
              shape: OvalBorder(
                side: BorderSide(width: 1, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

buildNavItem(int index, String title, String iconPath, int selectedIndex) {
  bool isSelected = selectedIndex == index;

  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        height: 24,
        width: 29,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        child: Image.asset(
          iconPath,
          color: isSelected ? Color(0xff584CF4) : Color(0xff666666),
        ),
      ),
      SizedBox(height: 4),
      Text(
        title,
        style: GoogleFonts.inter(
          fontSize: 11,
          fontWeight: FontWeight.w400,
          color: isSelected ? Color(0xff584CF4) : Color(0xff666666),
        ),
      ),
    ],
  );
}

appbar(context, String text) {
  final hiat = MediaQuery.of(context).size.height;
  final waid = MediaQuery.of(context).size.width;
  return Container(
    width: waid,
    height: 104,
    color: Color(0xff584cf4),
    child: Padding(
      padding: const EdgeInsets.only(top: 60, left: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(child: Image.asset('image/menu.png')),
          SizedBox(width: waid / 20),
          Container(
            child: Text(
              text,
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xffFFFFFF),
              ),
            ),
          ),
          SizedBox(width: waid / 3),
          Container(
            width: 20,
            height: 20,
            child: Image.asset('image/scharc.png'),
          ),
          SizedBox(width: waid / 10),
          Container(
            width: 20,
            height: 20,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 7, left: 7),
              child: Container(
                height: 18,
                width: 17,
                child: Center(
                  child: Text(
                    '3',
                    style: GoogleFonts.inter(
                      fontSize: 9,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),

                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('image/cut.png')),
            ),
          ),
          SizedBox(width: waid / 10),
          Container(
            width: 20,
            height: 20,
            child: Image.asset('image/love.png'),
          ),
        ],
      ),
    ),
  );
}

pars_card(context,text,img) {
    final hiat = MediaQuery.of(context).size.height;
  final waid = MediaQuery.of(context).size.width;
  return Column(
    children: [
      Container(
        width: waid*0.2796,
        height: 91,
        decoration: ShapeDecoration(
          image: DecorationImage(
            image: AssetImage(img),
            fit: BoxFit.fill,
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
      ),
      Text(
      text,
        style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w500,color: Color(0xfff666666)),
      ),
     
    ],
  );
}
