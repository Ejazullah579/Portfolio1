import 'package:flutter/material.dart';
import 'package:portfolio/const/colors.dart';
import 'package:portfolio/services/static_data.dart';
import 'package:portfolio/widgets/section_heading.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'desktop_feedback.dart';
import 'mobile_feedback.dart';
import 'tablet_feedback.dart';

class FeedbackPanel extends StatelessWidget {
  const FeedbackPanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top: 60, bottom: 50),
      color: cHeaderBackground,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SectionHeading(
            heading: kFeedbackSectionHeading,
            description: kFeaturedProjectSectionDetails,
          ),
          ResponsiveBuilder(
            builder: (context, sizingInformation) {
              if (sizingInformation.isMobile) {
                return const MobileFeedback();
              } else if (sizingInformation.isTablet) {
                return const TabletFeedback();
              } else {
                return const DesktopFeedback();
              }
            },
          ),
        ],
      ),
    );
  }
}
