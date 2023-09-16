import 'package:expense_flutter_web/utils/colors.dart';
import 'package:expense_flutter_web/utils/constants.dart';
import 'package:expense_flutter_web/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => mobileNavbar(),
      desktop: (context) => desktopNavbar(),
    );
  }

  /// ===================MOBILE NAVBAR =================================///
  Widget mobileNavbar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.menu),
          navLogo(),
        ],
      ),
    );
  }

  // ===================DESKTOP =================================//
  Widget desktopNavbar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navLogo(),
          Row(
            children: [
              navButton("Features"),
              navButton("About Us"),
              navButton("Pricing"),
              navButton("Feedback"),
            ],
          ),
          SizedBox(
            height: 45,
            child: ElevatedButton(
              style: borderedButtonStyle,
              child: SelectableText(
                "Request A Demo",
                style: TextStyle(
                  color: AppColors.primary,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  Widget navLogo() {
    return Container(
      width: 110,
      height: 110,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(logo),
        ),
      ),
    );
  }

  Widget navButton(String text) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
        onPressed: () {},
        child: SelectableText(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
