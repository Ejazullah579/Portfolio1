import 'package:flutter/material.dart';
import 'package:portfolio/screens/Home/Featured%20Projects/tablet_featured_projects.dart';
import 'package:portfolio/services/static_data.dart';
import 'package:portfolio/widgets/section_heading.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'desktop_featured_projects.dart';
import 'mobile_featured_projects.dart';

class FeaturedProjects extends StatelessWidget {
  const FeaturedProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 720,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top: 50, bottom: 50),
      color: Colors.white,
      child: Column(
        children: [
          const SectionHeading(
            heading: kFeaturedProjectSectionHeading,
            description: kFeaturedProjectSectionDetails,
          ),
          ResponsiveBuilder(
            builder: (context, sizingInformation) {
              if (sizingInformation.isMobile) {
                return const MobileFeaturedProjects();
              } else if (sizingInformation.isTablet) {
                return const TabletFeaturedProjects();
              } else {
                return const DesktopFeaturedProjects();
              }
            },
          ),
        ],
      ),
    );
  }
}
