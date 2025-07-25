import 'package:flutter/material.dart';

import 'package:ride_sharing_app/screens/home_page.dart';
import 'package:ride_sharing_app/screens/service.dart';
import 'package:ride_sharing_app/screens/widget.dart';

class CarePage extends StatefulWidget {
  const CarePage({Key? key}) : super(key: key);

  @override
  _CarePageState createState() => _CarePageState();
}

class _CarePageState extends State<CarePage> {
  final PageController _pageController = PageController();
  int _selectedIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        controller: _pageController,
        children: [
          HomePage(),
          Container(
            color: Colors.red,
            child: Center(
              child: Text("prodact coming soon  clik next  page "),
            ),
          ),
          service(),

          Container(
            color: Colors.red,
            child: Center(child: Text("Shop Page coming soon   ")),
          ),
          Container(
            color: Colors.blue,
            child: Center(child: Text("Care Page coming soon page")),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
 
            GestureDetector(
              onTap: () => _onItemTapped(0),
              child: buildNavItem(0, 'home', 'image/home.png', _selectedIndex),
            ),
            GestureDetector(
              onTap: () => _onItemTapped(1),
              child: buildNavItem(
                1,
                'Products',
                'image/grid_icon.png',
                _selectedIndex,
              ),
            ),
            GestureDetector(
              onTap: () => _onItemTapped(4),
              child: buildNavItem(
                2,
                'Care',
                'image/care.png',
                _selectedIndex,
              ), 
            ),

            GestureDetector(
              onTap: () => _onItemTapped(3),
              child: buildNavItem(
                3,
                'Shop',
                'image/shop_icon.png',
                _selectedIndex,
              ),
            ),

            GestureDetector(
              onTap: () => _onItemTapped(2),
              child: buildNavItem(
                4,
                'Community',
                'image/comunity.png',
                _selectedIndex,
              ), 
            ),
          ],
        ),
      ),
    );
  }
}
