import 'package:flutter/material.dart';
import 'package:titans_crypto/view/screens/home_screen.dart';
import 'package:titans_crypto/view/screens/onboarding_screen.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Titans Crypto',
        home: OnBoardingScreen());
  }
}
