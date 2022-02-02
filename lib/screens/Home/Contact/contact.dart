import 'package:flutter/material.dart';
import 'package:portfolio/const/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'desktop_contact.dart';
import 'mobile_contact.dart';
import 'tablet_contact.dart';

class Contact extends StatelessWidget {
  const Contact({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 720,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top: 100, bottom: 100),
      color: cHeaderBackground,
      child: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          if (sizingInformation.isMobile) {
            return const MobileContact();
          } else if (sizingInformation.isTablet) {
            return const TabletContact();
          } else {
            return const DesktopContact();
          }
        },
      ),
    );
  }
}
