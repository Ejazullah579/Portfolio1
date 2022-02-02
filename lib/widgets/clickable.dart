import 'package:flutter/material.dart';

class Clickable extends StatelessWidget {
  const Clickable({Key? key, required this.child, required this.onPress})
      : super(key: key);
  final Widget child;
  final Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(onTap: onPress, child: child),
    );
  }
}
