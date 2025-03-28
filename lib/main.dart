import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:travel_partner/Dashboard/MainController.dart';
import 'package:travel_partner/Dashboard/Spalsh.dart';
import 'package:travel_partner/Sign/Sign_up.dart';
import 'package:travel_partner/Sign/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyCN4jF8mNMujqiq20p-vzmx0y2OPz6GZ7c",
      appId: "1:255087834583:android:a9032240721fcfe11c0792",
      messagingSenderId: "255087834583",
      projectId: "travelpartner-22580",
      storageBucket: "travelpartner-22580.firebasestorage.app",
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel Partner',
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/home': (context) => const MainController(),
      },
    );
  }
}
