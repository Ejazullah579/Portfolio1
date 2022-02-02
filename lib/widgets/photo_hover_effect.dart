import 'package:flutter/material.dart';

class PhotoHoverEffect extends StatefulWidget {
  const PhotoHoverEffect(
      {Key? key, required this.width, required this.child, this.onPress})
      : super(key: key);
  final double width;
  final Widget child;
  final Function()? onPress;

  @override
  State<PhotoHoverEffect> createState() => _PhotoHoverEffectState();
}

class _PhotoHoverEffectState extends State<PhotoHoverEffect> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (event) => setState(() {
              isHovering = true;
            }),
        onExit: (event) => setState(() {
              isHovering = false;
            }),
        child: GestureDetector(
          onTap: widget.onPress,
          child: Stack(
            children: [
              widget.child,
              if (isHovering)
                Opacity(
                  opacity: 0.8,
                  child: Container(
                    width: widget.width,
                    height: widget.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromRGBO(131, 145, 255, 1),
                          Color.fromRGBO(99, 189, 252, 1),
                        ],
                      ),
                    ),
                    child: Image.asset(
                      "assets/others/inspect.jpg",
                      width: 60,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                )
            ],
          ),
        ));
  }
}
