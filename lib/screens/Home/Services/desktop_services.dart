import 'package:flutter/material.dart';
import 'package:portfolio/services/static_data.dart';
import 'package:portfolio/widgets/service_widget.dart';

class DesktopService extends StatelessWidget {
  const DesktopService({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FittedBox(
            child: SizedBox(
              width: 1120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ServiceWidget(
                    title: services[0].title,
                    dexcription: services[0].description,
                    icon: services[0].icon,
                  ),
                  const SizedBox(width: 20),
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
            ),
          ),
          const SizedBox(height: 20),
          FittedBox(
            child: SizedBox(
              width: 1120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ServiceWidget(
                    title: services[3].title,
                    dexcription: services[3].description,
                    icon: services[3].icon,
                  ),
                  const SizedBox(width: 20),
                  ServiceWidget(
                    title: services[4].title,
                    dexcription: services[4].description,
                    icon: services[4].icon,
                  ),
                  const SizedBox(width: 20),
                  ServiceWidget(
                    title: services[5].title,
                    dexcription: services[5].description,
                    icon: services[5].icon,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
