import 'package:expense_flutter_web/utils/constants.dart';
import 'package:expense_flutter_web/widgets/common_container.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container3 extends StatefulWidget {
  const Container3({super.key});

  @override
  State<Container3> createState() => _Container3State();
}

class _Container3State extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileContainer3(),
      desktop: (BuildContext context) => desktopContainer3(),
    );
  }

  /// ===================DESKTOP  =================================///
  Widget desktopContainer3() {
    return commonContainerDesktop(
      "ALWAYS ONLINE",
      "Real-time \nsupport \nwith cloud",
      "Lorem ipsum is placeholder text commonly used in the \ngraphic, print, and publishing industries for previewing layouts and visual mockups. \nLorem Ipsum Generator.",
      illustration1,
      false,
    );
  }

  /// ===================MOBILE =================================///
  Widget mobileContainer3() {
    return Container();

    // commonContainerDesktop(
    //   "ALWAYS ONLINE",
    //   "Real-time \nsupport \nwith cloud",
    //   "Lorem ipsum is placeholder text commonly used in the \ngraphic, print, and publishing industries for previewing layouts and visual mockups. \nLorem Ipsum Generator.",
    //   illustration1,
    //   false,
    // );
  }
}
