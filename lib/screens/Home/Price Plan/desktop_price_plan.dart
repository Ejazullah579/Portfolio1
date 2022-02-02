import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/classes/price_plan_class.dart';
import 'package:portfolio/const/colors.dart';
import 'package:portfolio/services/static_data.dart';

class DesktopPricePlan extends StatelessWidget {
  const DesktopPricePlan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            pricePlanList.length,
            (index) => PricePlanWidget(
                index: index + 1, pricePlan: pricePlanList[index]),
          ),
        ),
      ),
    );
  }
}

class PricePlanWidget extends StatefulWidget {
  const PricePlanWidget({
    Key? key,
    required this.pricePlan,
    required this.index,
  }) : super(key: key);
  final PricePlanClass pricePlan;
  final int index;

  @override
  State<PricePlanWidget> createState() => _PricePlanWidgetState();
}

class _PricePlanWidgetState extends State<PricePlanWidget>
    with SingleTickerProviderStateMixin {
  bool isHovering = false;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      lowerBound: 1,
      upperBound: 1.1,
      vsync: this,
      duration: const Duration(milliseconds: 200),
    )..drive(CurveTween(curve: Curves.fastOutSlowIn));
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() {
        isHovering = true;
        _controller.forward();
      }),
      onExit: (event) => setState(() {
        isHovering = false;
        _controller.reverse();
      }),
      child: Padding(
        padding: const EdgeInsets.only(right: 20, top: 30),
        child: ScaleTransition(
          scale: _controller.view,
          child: Material(
            elevation: 10,
            child: AnimatedContainer(
              width: 300,
              duration: const Duration(milliseconds: 200),
              padding: const EdgeInsets.only(
                  left: 30, right: 30, top: 50, bottom: 30),
              decoration: BoxDecoration(
                  // color: isHovering ? null : Colors.black12,
                  gradient: isHovering
                      ? const LinearGradient(colors: [
                          Color.fromRGBO(129, 147, 254, 1),
                          Color.fromRGBO(100, 186, 252, 1),
                        ])
                      : const LinearGradient(colors: [
                          cHeaderBackground,
                          cHeaderBackground,
                        ])),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    children: [
                      const Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: CircularProgressIndicator(
                            strokeWidth: 30,
                            value: 1,
                            valueColor: AlwaysStoppedAnimation(
                              Color.fromRGBO(226, 229, 255, 1),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          height: 100,
                          width: 100,
                          alignment: Alignment.center,
                          child: Text(
                            "0${widget.index}",
                            style: GoogleFonts.poppins(
                              fontSize: 30,
                              color: isHovering ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                  Text(
                    widget.pricePlan.name,
                    style: GoogleFonts.poppins(
                        color: isHovering ? Colors.white : Colors.black,
                        letterSpacing: 0.5,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    widget.pricePlan.description,
                    style: GoogleFonts.poppins(
                      letterSpacing: 0.5,
                      fontSize: 15,
                      color: isHovering ? Colors.white : Colors.black45,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(
                        3,
                        (index) => Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Divider(
                                    color: isHovering
                                        ? Colors.white
                                        : Colors.black12),
                                Text(
                                  widget.pricePlan.features[index],
                                  style: GoogleFonts.poppins(
                                    letterSpacing: 0.5,
                                    fontSize: 15,
                                    color: isHovering
                                        ? Colors.white
                                        : Colors.black45,
                                  ),
                                ),
                              ],
                            )),
                  ),
                  Divider(color: isHovering ? Colors.white : Colors.black12),
                  const SizedBox(height: 20),
                  if (!isHovering)
                    Text(
                      "\$ ${widget.pricePlan.price}.0",
                      style: GoogleFonts.poppins(
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  if (isHovering)
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(250, 50),
                          fixedSize: const Size(200, 30),
                          primary: Colors.white,
                          onPrimary: Colors.black),
                      child: Text("BUY NOW",
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 14,
                              letterSpacing: 0.5,
                              fontWeight: FontWeight.w600)),
                    )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
