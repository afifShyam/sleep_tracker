import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sleep_tracker/src/index.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: STColor.darkBlueBackground,
      body: Stack(
        children: [
          SafeArea(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              children: const [
                HomepageStartPage(startPage: HomepageRoute.mainpageRoute),
                Center(child: Text('Explore More on the Info Page!')),
                Center(child: Text('Manage Your Profile Here!')),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: STColor.darkBlueBackground,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              gap: 8,
              activeColor: Colors.purple,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              duration: const Duration(milliseconds: 500),
              tabBackgroundColor: STColor.darkBlueBackground,
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                  iconColor: Colors.purple,
                  textColor: Colors.purple,
                  backgroundColor: Colors.grey.shade100,
                ),
                GButton(
                  icon: Icons.info,
                  text: 'Info',
                  iconColor: Colors.purple,
                  textColor: Colors.purple,
                  backgroundColor: Colors.grey.shade100,
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                  iconColor: Colors.purple,
                  textColor: Colors.purple,
                  backgroundColor: Colors.grey.shade100,
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
                _pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.ease,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
