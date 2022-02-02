import 'package:flutter/material.dart';
import 'package:portfolio/services/static_data.dart';
import 'package:portfolio/widgets/photo_hover_effect.dart';

import 'desktop_featured_projects.dart';

class MobileFeaturedProjects extends StatelessWidget {
  const MobileFeaturedProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          featuredProjects.length,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
    );
  }
}
