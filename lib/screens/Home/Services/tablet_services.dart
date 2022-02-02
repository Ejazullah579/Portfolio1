import 'package:flutter/material.dart';
import 'package:portfolio/services/static_data.dart';
import 'package:portfolio/widgets/service_widget.dart';

class TabletService extends StatelessWidget {
  const TabletService({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        FittedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ServiceWidget(
                title: services[0].title,
                dexcription: services[0].description,
                icon: services[0].icon,
              ),
              ServiceWidget(
                title: services[1].title,
                dexcription: services[1].description,
                icon: services[1].icon,
              ),
            ],
          ),
        ),
        FittedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ServiceWidget(
                title: services[2].title,
                dexcription: services[2].description,
                icon: services[2].icon,
              ),
              const SizedBox(width: 20),
              ServiceWidget(
                title: services[0].title,
                dexcription: services[0].description,
                icon: services[0].icon,
              ),
            ],
          ),
        ),
        FittedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ServiceWidget(
                title: services[1].title,
                dexcription: services[1].description,
                icon: services[1].icon,
              ),
              const SizedBox(width: 20),
              ServiceWidget(
                title: services[2].title,
                dexcription: services[2].description,
                icon: services[2].icon,
              ),
            ],
          ),
        )
      ]),
    );
  }
}
