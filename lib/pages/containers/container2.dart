import 'package:expense_flutter_web/utils/colors.dart';
import 'package:expense_flutter_web/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileContainer2(),
      desktop: (BuildContext context) => desktopContainer2(),
    );
  }

  /// ===================DESKTOP =================================///
  Widget desktopContainer2() {
    return Container(
      height: 900,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primary,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  top: -20,
                  right: -20,
                  child: Container(
                    width: 320,
                    height: 320,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(vector1),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -20,
                  left: -20,
                  child: Container(
                    width: 320,
                    height: 320,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(vector2),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 43,
                  right: 43,
                  bottom: 0,
                  child: Container(
                    height: 712,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          dashboard,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 40),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ...[fb, google, cocacola, samsung].map(
                  (image) => companyLogo(image),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// ===================MOBILE =================================///
  Widget mobileContainer2() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primary),
      child: Column(
        children: [
          // first container
          Container(
            padding: const EdgeInsets.only(top: 20, bottom: 0, right: 20, left: 20),
            child: Container(
              height: 295,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(dashboard),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

          // second container
          Container(
            padding: const EdgeInsets.symmetric(vertical: 40),
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                ...[fb, google, cocacola, samsung].map(
                  (image) => companyLogo(image),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget companyLogo(String image) {
    return Container(
      width: 160,
      height: 36,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
