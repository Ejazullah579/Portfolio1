import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/services/static_data.dart';
import 'package:portfolio/widgets/clickable.dart';

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            AboutSection(),
            NewsfeedSeection(),
            FollowMeSection(),
          ],
        ),
      ),
    );
  }
}

class FollowMeSection extends StatelessWidget {
  const FollowMeSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Follow Me",
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          kFooterSectionDetail3,
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 20),
        Row(
          children: const [
            CustomIcon(
              icon: FaIcon(FontAwesomeIcons.facebookF),
            ),
            CustomIcon(
              icon: FaIcon(FontAwesomeIcons.google),
            ),
            CustomIcon(
              icon: FaIcon(FontAwesomeIcons.twitter),
            ),
            CustomIcon(
              icon: FaIcon(FontAwesomeIcons.apple),
            ),
          ],
        ),
      ],
    );
  }
}

class CustomIcon extends StatefulWidget {
  const CustomIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final FaIcon icon;

  @override
  State<CustomIcon> createState() => _CustomIconState();
}

class _CustomIconState extends State<CustomIcon> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() {
        isHovering = true;
      }),
      onExit: (event) => setState(() {
        isHovering = false;
      }),
      cursor: SystemMouseCursors.click,
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: FaIcon(
          widget.icon.icon,
          color: isHovering
              ? const Color.fromRGBO(132, 144, 255, 1)
              : Colors.white,
          size: 15,
        ),
      ),
    );
  }
}

class NewsfeedSeection extends StatelessWidget {
  const NewsfeedSeection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: SizedBox(
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Newsletter",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              kFooterSectionDetail2,
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.white,
                    height: 45,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter Email Address",
                      ),
                    ),
                  ),
                ),
                Clickable(
                  onPress: () {},
                  child: Container(
                    color: const Color.fromRGBO(132, 144, 255, 1),
                    height: 45,
                    width: 45,
                    alignment: Alignment.center,
                    child: const RotatedBox(
                      quarterTurns: 2,
                      child: Icon(
                        Icons.arrow_back,
                        size: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class AboutSection extends StatelessWidget {
  const AboutSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: SizedBox(
        width: 500,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "About me",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Text(
              kFooterSectionDetail1,
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            Text(
              kFooterSectionCopywrite,
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
