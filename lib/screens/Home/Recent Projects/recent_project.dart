import 'package:flutter/material.dart';
import 'package:portfolio/const/colors.dart';
import 'package:portfolio/screens/Home/Recent%20Projects/tablet_recent_project.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'desktop_recent_project.dart';
import 'mobile_recent_project.dart';

class RecentProjects extends StatelessWidget {
  const RecentProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 30),
      alignment: Alignment.center,
      color: const Color.fromRGBO(58, 58, 58, 1),
      child: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          if (sizingInformation.isMobile) {
            return const MobileRecentProjects();
          } else if (sizingInformation.isTablet) {
            return const TabletRecentProjects();
          } else {
            return const DesktopRecentProjects();
          }
        },
      ),
    );
  }
}
