import 'package:expense_flutter_web/utils/colors.dart';
import 'package:expense_flutter_web/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileContainer1(),
      desktop: (BuildContext context) => desktopContainer1(),
    );
  }

  /// ===================DESKTOP  =================================///
  Widget desktopContainer1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Track your \nExpenses to \nSave Money",
                  style: TextStyle(
                    fontSize: w! / 20,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Helps you to organize your income and expenses",
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    SizedBox(
                      height: 45,
                      child: ElevatedButton.icon(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(AppColors.primary),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              side: BorderSide(color: AppColors.primary),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                        label: const Text(
                          "Try free demo",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Text(
                      "- Web iOS and Android",
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: 530,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(illustration1),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// ===================MOBILE =================================///
  Widget mobileContainer1() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: w! / 1.2,
          width: w! / 1.2,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(illustration1),
              fit: BoxFit.contain,
            ),
          ),
        ),
        const SizedBox(height: 20),
        SelectableText(
          "Track your \nExpenses to \nSave Money",
          style: TextStyle(
            fontSize: w! / 20,
            fontWeight: FontWeight.bold,
            height: 1.2,
          ),
        ),
        const SizedBox(height: 10),
        SelectableText(
          "Helps you to organize \nyour income and expenses",
          style: TextStyle(
            color: Colors.grey.shade400,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 30),
        SizedBox(
          height: 45,
          child: ElevatedButton.icon(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(AppColors.primary),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  side: BorderSide(color: AppColors.primary),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
            ),
            label: const Text(
              "Try free demo",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        SelectableText(
          "- Web iOS and Android",
          style: TextStyle(
            color: Colors.grey.shade400,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
