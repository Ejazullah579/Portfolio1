import 'package:flutter/material.dart';
import 'package:portfolio/screens/Home/Recent%20Projects/desktop_recent_project.dart';
import 'package:portfolio/theme/theme.dart';

class MobileRecentProjects extends StatelessWidget {
  const MobileRecentProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 25),
                    color: const Color.fromRGBO(251, 110, 16, 1),
                    child: Text(
                      "Recent Projects",
                      style: PorfolioTheme.darkTextTheme.headline5,
                    ),
                  ),
                  const ProjectWidget(
                    projectCat: "Web Project",
                    title: "World Of WarCraft",
                    imagePath: "assets/pngs/sample.png",
                    description:
                        "Lorem ipsum dolor sit amet consectetur adipisc  ut varius magna hendrerit, vulputate penatibus aenean hac interdum.",
                    date: "15-01-2022",
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const ProjectWidget(
                projectCat: "Web Project",
                title: "World Of WarCraft",
                imagePath: "assets/pngs/sample.png",
                description:
                    "Lorem ipsum dolor sit amet consectetur adipisc  ut varius magna hendrerit, vulputate penatibus aenean hac interdum.",
                date: "15-01-2022",
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
