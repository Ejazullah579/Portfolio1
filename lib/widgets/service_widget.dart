import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/const/colors.dart';

class ServiceWidget extends StatefulWidget {
  const ServiceWidget({
    Key? key,
    required this.title,
    required this.dexcription,
    required this.icon,
  }) : super(key: key);
  final String title;
  final String dexcription;
  final FaIcon icon;

  @override
  State<ServiceWidget> createState() => _ServiceWidgetState();
}

class _ServiceWidgetState extends State<ServiceWidget>
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
  void dispose() {
    _controller.dispose();
    super.dispose();
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
      child: ScaleTransition(
        scale: _controller.view,
        child: AnimatedContainer(
          width: 320,
          duration: const Duration(milliseconds: 400),
          margin: const EdgeInsets.all(20),
          // transform: Matrix4.tr,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:
                isHovering ? BorderRadius.circular(10) : BorderRadius.zero,
            boxShadow: [
              if (isHovering)
                const BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(2, 2),
                )
            ],
          ),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            decoration: BoxDecoration(
              color: isHovering
                  ? const Color.fromRGBO(250, 250, 255, 1)
                  : cHeaderBackground,
              borderRadius:
                  isHovering ? BorderRadius.circular(10) : BorderRadius.zero,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FaIcon(
                    widget.icon.icon,
                    color: isHovering ? cIconsHoverColor : Colors.black,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    widget.title,
                    style: GoogleFonts.poppins(
                      fontSize: 19.0,
                      fontWeight: FontWeight.w600,
                      color: isHovering ? cIconsHoverColor : Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.dexcription,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
