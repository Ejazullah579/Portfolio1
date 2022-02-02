import 'package:flutter/material.dart';
import 'package:portfolio/services/static_data.dart';
import 'package:portfolio/widgets/photo_hover_effect.dart';
import 'package:portfolio/widgets/section_heading.dart';

import 'desktop_featured_projects.dart';

class TabletFeaturedProjects extends StatelessWidget {
  const TabletFeaturedProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FittedBox(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(
                3,
                (index) => Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Column(
                    children: [
                      PhotoHoverEffect(
                        width: 350,
                        child: Image.asset(
                          featuredProjects[index].imgPath,
                          width: 350,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      const SizedBox(height: 15),
                      FeaturedItemText(
                        title: featuredProjects[index].title,
                        description: featuredProjects[index].description,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          FittedBox(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(
                3,
                (index) => Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Column(
                    children: [
                      PhotoHoverEffect(
                        width: 350,
                        child: Image.asset(
                          featuredProjects[index + 3].imgPath,
                          width: 350,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      const SizedBox(height: 15),
                      FeaturedItemText(
                        title: featuredProjects[index + 3].title,
                        description: featuredProjects[index + 3].description,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
