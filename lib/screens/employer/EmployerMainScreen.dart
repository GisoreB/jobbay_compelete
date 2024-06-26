import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:jobbay/config/Constants.dart';
import 'package:jobbay/screens/employer/home/Applicants/ApplicantTable.dart';
import 'package:jobbay/screens/employer/home/HomeScreen.dart';
import 'package:jobbay/screens/employer/settings/SettingScreen.dart';
import 'package:jobbay/screens/message/ChatHomeScreen.dart';
import 'package:jobbay/theme/Theme.dart';

class EmployerMainPage extends StatefulWidget {
  const EmployerMainPage({Key? key}) : super(key: key);

  @override
  State<EmployerMainPage> createState() => _EmployerMainPageState();
}

class _EmployerMainPageState extends State<EmployerMainPage> {
  int _selectedIndex = 0;

  List<Widget> applicantScreens = [
    HomeScreen(),
    const ApplicantsOverview(),
    const ChatHomeScreen(),
    const SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      body: applicantScreens[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: GNav(
          tabBackgroundColor: Colors.grey.shade500,
          gap: 8,
          padding: const EdgeInsets.all(16),
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          tabs: [
            GButton(
              icon: Icons.home,
              text: "Home",
              backgroundColor: primaryClr.withOpacity(0.7),
              textStyle: TextStyle(fontSize: navTextSize),
              iconSize: navTextSize * 1.3,
            ),
            GButton(
              icon: Icons.search,
              text: "Applicants",
              backgroundColor: yellowClr.withOpacity(0.7),
              textStyle: TextStyle(fontSize: navTextSize),
              iconSize: navTextSize * 1.3,
            ),
            GButton(
              icon: Icons.message,
              text: "Messages",
              backgroundColor: pinkClr.withOpacity(0.7),
              textStyle: TextStyle(fontSize: navTextSize),
              iconSize: navTextSize * 1.3,
            ),
            GButton(
              icon: Icons.settings,
              text: "Settings",
              backgroundColor: Colors.green.withOpacity(0.7),
              textStyle: TextStyle(fontSize: navTextSize),
              iconSize: navTextSize * 1.3,
            ),
          ],
        ),
      ),
    );
  }
}
