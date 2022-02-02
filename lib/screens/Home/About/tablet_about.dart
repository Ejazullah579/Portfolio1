import 'package:flutter/material.dart';
import 'package:portfolio/services/static_data.dart';
import 'package:portfolio/widgets/custom_button.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TabletAbout extends StatelessWidget {
  const TabletAbout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        /// Image
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/pngs/about_me.png",
                height: (MediaQuery.of(context).size.width * 0.4),
                fit: BoxFit.fitHeight,
              ),
            ],
          ),
        ),

        /// Name and body Text
        Expanded(
          child: FittedBox(
            child: Padding(
              padding: const EdgeInsets.only(right: 40, bottom: 50),
              child: SizedBox(
                width: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "THIS IS ME",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      kAboutSectionHeading,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    const SizedBox(height: 15),
                    Text(
                      kAboutSectionDetails,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    const SizedBox(height: 20),
                    const CustomButton(
                      text: "Discover now",
                      width: 200,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
