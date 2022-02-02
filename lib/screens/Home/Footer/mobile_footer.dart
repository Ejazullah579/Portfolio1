import 'package:flutter/material.dart';

import 'desktop_footer.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: AboutSection(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: NewsfeedSeection(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: FollowMeSection(),
            ),
          ],
        ),
      ),
    );
  }
}
