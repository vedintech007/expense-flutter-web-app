import 'package:expense_flutter_web/utils/constants.dart';
import 'package:expense_flutter_web/widgets/common_container.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container4 extends StatefulWidget {
  const Container4({super.key});

  @override
  State<Container4> createState() => _Container4State();
}

class _Container4State extends State<Container4> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileContainer4(),
      desktop: (BuildContext context) => desktopContainer4(),
    );
  }

  /// ===================DESKTOP  =================================///
  Widget desktopContainer4() {
    return commonContainerDesktop(
      'FREE SOME COST',
      'Save cost \nfor you \nand family',
      'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
      illustration2,
      true,
    );
  }

  /// ===================MOBILE =================================///
  Widget mobileContainer4() {
    return commonContainerMobile(
      'FREE SOME COST',
      'Save cost \nfor you \nand family',
      'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
      illustration2,
      true,
    );
  }
}
