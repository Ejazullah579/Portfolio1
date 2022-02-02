import 'package:flutter/material.dart';

import 'desktop_contact.dart';

class TabletContact extends StatelessWidget {
  const TabletContact({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: SizedBox(
        width: 800,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: const [
              ContactMeWidget(),
              SengMessage(),
            ],
          ),
        ),
      ),
    );
  }
}
