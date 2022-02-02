import 'package:flutter/material.dart';

class TabletNavigationBar extends StatelessWidget {
  const TabletNavigationBar({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.white,
      width: 1200,
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/pngs/logo.png",
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              if (Scaffold.of(context).isDrawerOpen) {
                // _controller.forward();
                Scaffold.of(context).openEndDrawer();
                // _controller.reverse();
              } else {
                // _controller.reverse();
                Scaffold.of(context).openDrawer();
              }
              // Scaffold.of(context).openDrawer();
            },
            child: AnimatedIcon(
              icon: AnimatedIcons.arrow_menu,
              progress: controller.view,
            ),
          )
        ],
      ),
    );
  }
}
