import 'package:flutter/material.dart';
import 'package:portfolio/services/static_data.dart';
import 'package:portfolio/widgets/custom_button.dart';

class DesktopHeader extends StatelessWidget {
  const DesktopHeader({
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
            padding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
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
                  style: Theme.of(context).textTheme.headline1,
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
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset("assets/pngs/self.png",
                  height: 500 + MediaQuery.of(context).size.width * 0.08,
                  fit: BoxFit.fitHeight),
            ],
          ),
        ),
      ],
    );
  }
}
