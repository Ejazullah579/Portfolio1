import 'package:flutter/material.dart';
import 'package:portfolio/services/static_data.dart';
import 'package:portfolio/widgets/custom_button.dart';

class DesktopAbout extends StatelessWidget {
  const DesktopAbout({
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
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset("assets/pngs/about_me.png",
                  height: 300 + MediaQuery.of(context).size.width * 0.08,
                  fit: BoxFit.fitHeight),
            ],
          ),
        ),

        /// Name and body Text
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.1, bottom: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "THIS IS ME",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                const SizedBox(height: 5),
                Text(
                  kAboutSectionHeading,
                  style: Theme.of(context).textTheme.headline2,
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
      ],
    );
  }
}
