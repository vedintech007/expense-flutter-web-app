import 'package:expense_flutter_web/utils/constants.dart';
import 'package:expense_flutter_web/widgets/common_container.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container5 extends StatefulWidget {
  const Container5({super.key});

  @override
  State<Container5> createState() => _Container5State();
}

class _Container5State extends State<Container5> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileContainer5(),
      desktop: (BuildContext context) => desktopContainer5(),
    );
  }

  /// ===================DESKTOP  =================================///
  Widget desktopContainer5() {
    return commonContainerDesktop(
      'USE ANYTIME',
      'Use anytime \nwhen you \nneed',
      'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
      illustration3,
      false,
    );
  }

  /// ===================MOBILE =================================///
  Widget mobileContainer5() {
    return commonContainerMobile(
      'USE ANYTIME',
      'Use anytime \nwhen you \nneed',
      'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
      illustration3,
      false,
    );
  }
}
