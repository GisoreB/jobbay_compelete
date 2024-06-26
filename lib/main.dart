import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:jobbay/database/DbHelper.dart';
import 'package:jobbay/database/JobHelper.dart';
import 'package:jobbay/database/TodoHelper.dart';
import 'package:jobbay/screens/applicant/ApplicantMainScreen.dart';
import 'package:jobbay/screens/applicant/category/CategoryScreen.dart';
import 'package:jobbay/screens/applicant/events/EventsScreen.dart';
import 'package:jobbay/screens/applicant/filter/FilterPage.dart';
import 'package:jobbay/screens/applicant/settings/SettingScreen.dart';
import 'package:jobbay/screens/applicant/settings/basic_info_screen.dart';
import 'package:jobbay/screens/auth/Login.dart';
import 'package:jobbay/screens/auth/Register.dart';
import 'package:jobbay/screens/employer/EmployerMainScreen.dart';
import 'package:jobbay/screens/splash/AnimatedSplashScreen.dart';
import 'package:jobbay/services/theme_services.dart';
import 'package:jobbay/theme/Theme.dart';
// import 'package:hirehub/wearOs/main.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DbHelper.initDb();
  await TodoHelper.initDb();
  await JobHelper.initDb();
  await GetStorage.init();
  runApp(const MyApp());
  // runApp(const WearOsApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return GetMaterialApp(
      darkTheme: Themes.dark,
      theme: Themes.light,
      themeMode: ThemeServices().theme,
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        // "/": (context) => const WearOsApp(),
        "/": (context) => const AnimatedSplashScreens(),
        "/home": (context) => const ApplicantMainPage(),
        "/homeEmployer": (context) => const EmployerMainPage(),
        "/login": (context) => const LoginScreen(),
        "/register": (context) => const Register(),
        "/category": (context) => CategoryScreen(),
        "/filter": (context) => const FilterPage(),
        "/todo": (context) => const EventsScreen(),
        "/edit_basic": (context) => const EditBasicInfoScreen(),
        "/settings": (context) => const SettingScreen(),
        // "/wearDashboard": (context) => const DashboardScreen(),
        // "/wearDashboardEmployer": (context) => const EmployerDashboardScreen(),
      },
    );
  }
}
