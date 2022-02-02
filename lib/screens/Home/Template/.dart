import 'package:flutter/material.dart';
import 'package:portfolio/const/colors.dart';
import 'package:portfolio/screens/Home/Header/desktop_header.dart';
import 'package:portfolio/screens/Home/Header/mobile_header.dart';
import 'package:portfolio/screens/Home/Header/tablet_header.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 720,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top: 50,bottom:50),
      color: cHeaderBackground,
      child: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          if (sizingInformation.isMobile) {
            return const MobileHeader();
          } else if (sizingInformation.isTablet) {
            return const TabletHeader();
          } else {
            return const DesktopHeader();
          }
        },
      ),
    );
  }
}
