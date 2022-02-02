import 'package:flutter/material.dart';
import 'package:portfolio/const/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'desktop_about.dart';
import 'mobile_about.dart';
import 'tablet_about.dart';

class About extends StatelessWidget {
  const About({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top: 80, bottom: 50),
      color: Colors.white,
      child: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          if (sizingInformation.isMobile) {
            return const MobileAbout();
          } else if (sizingInformation.isTablet) {
            return const TabletAbout();
          } else {
            return const DesktopAbout();
          }
        },
      ),
    );
  }
}
