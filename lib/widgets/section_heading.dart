import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    Key? key,
    required this.heading,
    required this.description,
  }) : super(key: key);

  final String heading;
  final String description;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.isMobile) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: SectionHeadingTemp(
                isMobile: true, heading: heading, description: description),
          );
        } else if (sizingInformation.isTablet) {
          return FittedBox(
            child: SizedBox(
              width: 500,
              child: SectionHeadingTemp(
                  heading: heading, description: description),
            ),
          );
        } else {
          return SizedBox(
            width: 600,
            child:
                SectionHeadingTemp(heading: heading, description: description),
          );
        }
      },
    );
  }
}

class SectionHeadingTemp extends StatelessWidget {
  const SectionHeadingTemp({
    Key? key,
    required this.heading,
    required this.description,
    this.isMobile = false,
  }) : super(key: key);

  final String heading;
  final String description;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          heading,
          style: isMobile
              ? Theme.of(context).textTheme.headline4
              : Theme.of(context).textTheme.headline3,
        ),
        const SizedBox(height: 5),
        Text(
          description,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
