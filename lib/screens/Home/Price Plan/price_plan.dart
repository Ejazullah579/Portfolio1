import 'package:flutter/material.dart';
import 'package:portfolio/const/colors.dart';
import 'package:portfolio/services/static_data.dart';
import 'package:portfolio/widgets/section_heading.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'desktop_price_plan.dart';
import 'mobile_price_plan.dart';
import 'tablet_price_plan.dart';

class PricePlan extends StatelessWidget {
  const PricePlan({
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
        mainAxisSize: MainAxisSize.min,
        children: [
          const SectionHeading(
            heading: kPricePlanSectionHeading,
            description: kPricePlanSectionDetails,
          ),
          ResponsiveBuilder(
            builder: (context, sizingInformation) {
              if (sizingInformation.isMobile) {
                return const MobilePricePlan();
              } else if (sizingInformation.isTablet) {
                return const TabletPricePlan();
              } else {
                return const DesktopPricePlan();
              }
            },
          ),
        ],
      ),
    );
  }
}
