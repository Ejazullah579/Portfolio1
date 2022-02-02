import 'package:flutter/material.dart';

class ClickCursor extends StatelessWidget {
  const ClickCursor({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: child,
    );
  }
}
