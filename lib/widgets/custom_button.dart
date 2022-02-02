import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/clickable.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    Key? key,
    required this.text,
    this.onPress,
    this.width,
  }) : super(key: key);
  final String text;
  final Function()? onPress;
  final double? width;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return Clickable(
      onPress: widget.onPress,
      child: Material(
        elevation: isHovering ? 10 : 0,
        borderRadius: BorderRadius.circular(isHovering ? 50 : 5),
        child: MouseRegion(
          onEnter: (event) => setState(() {
            isHovering = true;
          }),
          onExit: (event) => setState(() {
            isHovering = false;
          }),
          child: AnimatedContainer(
            height: 40,
            width: widget.width,
            duration: const Duration(milliseconds: 400),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(isHovering ? 50 : 5),
              gradient: LinearGradient(colors: [
                if (!isHovering) const Color.fromRGBO(131, 146, 255, 1),
                const Color.fromRGBO(99, 187, 252, 1),
                if (isHovering) const Color.fromRGBO(131, 146, 255, 1),
              ]),
            ),
            child: Text(
              widget.text,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
