import 'package:flutter/material.dart';
import 'package:portfolio/services/static_data.dart';
import 'package:portfolio/widgets/custom_button.dart';

class MobileAbout extends StatelessWidget {
  const MobileAbout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: SizedBox(
        height: 575,
        width: 500,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// Name and body Text
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      "assets/pngs/about_me.png",
                      height: 300,
                      fit: BoxFit.fitHeight,
                    ),
                    const SizedBox(height: 20),
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
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    const SizedBox(height: 20),
                    const CustomButton(
                      text: "Discover now",
                      width: 200,
                    ),
                  ],
                ),
              ),
            ),

            /// Image
          ],
        ),
      ),
    );
  }
}
