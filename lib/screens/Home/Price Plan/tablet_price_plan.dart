import 'package:flutter/material.dart';
import 'package:portfolio/services/static_data.dart';

import 'desktop_price_plan.dart';

class TabletPricePlan extends StatelessWidget {
  const TabletPricePlan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PricePlanWidget(index: 1, pricePlan: pricePlanList[0]),
              PricePlanWidget(index: 2, pricePlan: pricePlanList[1])
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PricePlanWidget(index: 3, pricePlan: pricePlanList[0]),
              PricePlanWidget(index: 4, pricePlan: pricePlanList[1])
            ],
          ),
        ]),
      ),
    );
  }
}
