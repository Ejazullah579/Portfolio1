import 'package:flutter/material.dart';
import 'package:portfolio/const/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'desktop_footer.dart';
import 'mobile_footer.dart';
import 'tablet_footer.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top: 150, bottom: 150),
      color: cFooterBackground,
      child: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          if (sizingInformation.isMobile) {
            return const MobileFooter();
          } else if (sizingInformation.isTablet) {
            return const TabletFooter();
          } else {
            return const DesktopFooter();
          }
        },
      ),
    );
  }
}
