import 'package:flutter/material.dart';
import 'package:portfolio/services/static_data.dart';
import 'package:portfolio/widgets/custom_button.dart';

class TabletHeader extends StatelessWidget {
  const TabletHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        /// Name and body Text
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 40),
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
                  kUserName,
                  style: Theme.of(context).textTheme.headline3,
                ),
                const SizedBox(height: 15),
                Text(
                  kUserdescription,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                const SizedBox(height: 15),
                const CustomButton(
                  text: "Discover now",
                  width: 200,
                )
              ],
            ),
          ),
        ),

        /// Image
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/pngs/self.png",
                height: (MediaQuery.of(context).size.width * 0.5),
                fit: BoxFit.fitHeight,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
