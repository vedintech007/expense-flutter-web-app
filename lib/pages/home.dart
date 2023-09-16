import 'package:expense_flutter_web/pages/containers/container1.dart';
import 'package:expense_flutter_web/pages/containers/container2.dart';
import 'package:expense_flutter_web/utils/constants.dart';
import 'package:expense_flutter_web/widgets/navbar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavBar(),
            Container1(),
            Container2(),
          ],
        ),
      ),
    );
  }
}
