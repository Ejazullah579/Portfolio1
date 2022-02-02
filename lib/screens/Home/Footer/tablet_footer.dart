import 'package:flutter/material.dart';
import 'desktop_footer.dart';

class TabletFooter extends StatelessWidget {
  const TabletFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                AboutSection(),
                NewsfeedSeection(),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: FollowMeSection(),
            ),
          ],
        ),
      ),
    );
  }
}
