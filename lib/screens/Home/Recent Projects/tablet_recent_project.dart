import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/theme/theme.dart';

class TabletRecentProjects extends StatelessWidget {
  const TabletRecentProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SizedBox(
          // width: 1366,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
              const SizedBox(width: 30),
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: ProjectWidget(
                  projectCat: "Web Project",
                  title: "World Of WarCraft",
                  imagePath: "assets/pngs/sample.png",
                  description:
                      "Lorem ipsum dolor sit amet consectetur adipisc  ut varius magna hendrerit, vulputate penatibus aenean hac interdum.",
                  date: "15-01-2022",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({
    Key? key,
    required this.projectCat,
    required this.title,
    required this.description,
    required this.date,
    required this.imagePath,
  }) : super(key: key);

  final String projectCat;
  final String title;
  final String description;
  final String date;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 710,
      color: const Color.fromRGBO(37, 37, 37, 1),
      child: Stack(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 25),
              color: const Color.fromRGBO(255, 179, 32, 1),
              child: Text(
                projectCat,
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    imagePath,
                    width: 500,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 30),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          style: GoogleFonts.poppins(
                            fontSize: 22,
                            color: const Color.fromRGBO(255, 179, 32, 1),
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.35,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          description,
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.white54,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.35,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Date: ",
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                                // letterSpacing: 0.35,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              date,
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.35,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
