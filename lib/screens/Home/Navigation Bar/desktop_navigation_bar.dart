import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/enums/scrool_to_panel.dart';

class DesktopNavigationBar extends StatelessWidget {
  const DesktopNavigationBar({
    Key? key,
    required this.scrollToPanel,
  }) : super(key: key);
  final Function scrollToPanel;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        height: 60,
        color: Colors.white,
        width: 1200,
        padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/pngs/logo.png",
              height: 30,
            ),
            SizedBox(
                width: 450,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    NavbarItem(
                      text: "Home",
                      onPress: () => scrollToPanel(ScrollToPanel.header),
                    ),
                    NavbarItem(
                      text: "About",
                      onPress: () => scrollToPanel(ScrollToPanel.aboutMe),
                    ),
                    NavbarItem(
                      text: "Services",
                      onPress: () => scrollToPanel(ScrollToPanel.services),
                    ),
                    NavbarItem(
                      text: "Projects",
                      onPress: () =>
                          scrollToPanel(ScrollToPanel.featuredProjects),
                    ),
                    NavbarItem(
                      text: "Pricing",
                      onPress: () => scrollToPanel(ScrollToPanel.pricePlan),
                    ),
                    NavbarItem(
                      text: "Contact",
                      onPress: () => scrollToPanel(ScrollToPanel.footer),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class NavbarItem extends StatefulWidget {
  const NavbarItem({
    Key? key,
    required this.text,
    this.onPress,
  }) : super(key: key);
  final String text;
  final Function()? onPress;

  @override
  State<NavbarItem> createState() => _NavbarItemState();
}

class _NavbarItemState extends State<NavbarItem> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPress,
      child: MouseRegion(
        onEnter: (event) => setState(() {
          isHovering = true;
        }),
        onExit: (event) => setState(() {
          isHovering = false;
        }),
        cursor: SystemMouseCursors.click,
        child: Text(
          widget.text,
          style: GoogleFonts.poppins(
              fontSize: 12,
              color: isHovering
                  ? const Color.fromRGBO(131, 145, 255, 1)
                  : Colors.black),
        ),
      ),
    );
  }
}
