import 'package:flutter/material.dart';
import 'package:portfolio/const/colors.dart';
import 'package:portfolio/screens/Home/Services/desktop_services.dart';
import 'package:portfolio/screens/Home/Services/mobile_services.dart';
import 'package:portfolio/screens/Home/Services/tablet_services.dart';
import 'package:portfolio/services/static_data.dart';
import 'package:portfolio/widgets/section_heading.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ServicePanel extends StatelessWidget {
  const ServicePanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top: 70, bottom: 50),
      color: cHeaderBackground,
      child: Column(
        children: [
          const SectionHeading(
            heading: kServiceSectionHeading,
            description: kServiceSectionDetails,
          ),
          ResponsiveBuilder(
            builder: (context, sizingInformation) {
              if (sizingInformation.isMobile) {
                return const MobileService();
              } else if (sizingInformation.isTablet) {
                return const TabletService();
              } else {
                return const DesktopService();
              }
            },
          ),
        ],
      ),
    );
  }
}
