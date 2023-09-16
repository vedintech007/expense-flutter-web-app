import 'package:expense_flutter_web/pages/home.dart';
import 'package:expense_flutter_web/utils/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xpense',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: "HindSiliguri",
        brightness: Brightness.light,
        primaryColor: AppColors.primary,
      ),
      home: const Home(),
    );
  }
}
