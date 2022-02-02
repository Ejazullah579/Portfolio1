import 'package:flutter/material.dart';
import 'package:portfolio/const/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'desktop_navigation_bar.dart';
import 'mobile_navigation_bar.dart';
import 'tablet_navigation_bar.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({
    Key? key,
    required this.controller,
    required this.scrollToPanel,
  }) : super(key: key);
  final AnimationController controller;
  final Function scrollToPanel;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 720,
      width: MediaQuery.of(context).size.width,
      // padding: const EdgeInsets.only(top: 50, bottom: 50),
      color: cHeaderBackground,
      child: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          if (sizingInformation.isMobile) {
            return MobileNavigationBar(
              controller: controller,
            );
          } else if (sizingInformation.isTablet) {
            return TabletNavigationBar(
              controller: controller,
            );
          } else {
            return DesktopNavigationBar(
              scrollToPanel: scrollToPanel,
            );
          }
        },
      ),
    );
  }
}
