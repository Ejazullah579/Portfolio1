import 'package:flutter/material.dart';
import 'package:portfolio/services/static_data.dart';
import 'package:portfolio/widgets/service_widget.dart';

class MobileService extends StatelessWidget {
  const MobileService({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            services.length,
            (index) => ServiceWidget(
              title: services[index].title,
              dexcription: services[index].description,
              icon: services[index].icon,
            ),
          )),
    );
  }
}
