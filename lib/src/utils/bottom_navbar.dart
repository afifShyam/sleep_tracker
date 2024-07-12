import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sleep_tracker/src/index.dart';
import 'package:sleep_tracker/src/screen/info/question_start_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterBloc(),
      child: BlocConsumer<RegisterBloc, RegisterState>(
        listener: (context, state) {
          // Listener logic for state changes
          if (state.loggedUser == UserLogged.signedOut &&
              state.profileLogout == true) {
            log('aaaaaaaa');
            // Perform navigation logic here
            // For example:
            // Navigator.of(context).pushReplacementNamed(HomepageRoute.loginRoute);
          }
        },
        builder: (context, state) {
          if (state.profileLogout == true) {
            HomepageStartPage.of(context)
                .exitUntill(context, routeName: HomepageRoute.loginRoute);
          }
          return Scaffold(
            backgroundColor: STColor.darkBlueBackground,
            body: IndexedStack(
              index: _selectedIndex,
              children: const [
                HomepageStartPage(startPage: HomepageRoute.mainpageRoute),
                QuestionStartPage(startPage: QuestionRoute.infoPage),
                ProfileStartPage(startPage: ProfileRoute.dashProfileRoute),
              ],
            ),
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                color: STColor.darkBlueBackground,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 20, color: Colors.black.withOpacity(.1)),
                ],
              ),
              child: SafeArea(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                  child: GNav(
                    gap: 8,
                    activeColor: Colors.purple,
                    iconSize: 24,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
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
                        text: 'PR',
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
                    },
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
