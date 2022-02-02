import 'package:flutter/material.dart';
import 'package:portfolio/services/static_data.dart';

import 'desktop_price_plan.dart';

class MobilePricePlan extends StatelessWidget {
  const MobilePricePlan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            pricePlanList.length,
            (index) => PricePlanWidget(
                index: index + 1, pricePlan: pricePlanList[index]),
          ),
        ),
      ),
    );
    ;
  }
}
