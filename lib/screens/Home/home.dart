import 'package:flutter/material.dart';
import 'package:portfolio/const/colors.dart';
import 'package:portfolio/enums/scrool_to_panel.dart';
import 'package:portfolio/screens/Home/About/about.dart';
import 'package:portfolio/screens/Home/Contact/contact.dart';
import 'package:portfolio/screens/Home/Featured%20Projects/featured_projects.dart';
import 'package:portfolio/screens/Home/Feedback/feedback.dart';
import 'package:portfolio/screens/Home/Footer/footer.dart';
import 'package:portfolio/screens/Home/Navigation%20Bar/navigation_bar.dart'
    as nv;
import 'package:portfolio/screens/Home/Price%20Plan/price_plan.dart';
import 'package:portfolio/widgets/measure_size.dart';
import 'Header/header.dart';
import 'Navigation Bar/desktop_navigation_bar.dart';
import 'Services/services.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late ScrollController _scrollController;
  late AnimationController _controller;

  /// ALl pannel Sizes in-order to scroll to specific panel
  double headerHeight = 0;
  double aboutHeight = 0;
  double serviceHeight = 0;
  double featuredProjectsHeight = 0;
  double feedbackHeight = 0;
  double pricePlanHeight = 0;
  double contactHeight = 0;
  double footerHeight = 0;

  bool isExceeded100Px = false;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        if (!isExceeded100Px) {
          if (_scrollController.offset > 100) {
            setState(() {
              isExceeded100Px = true;
            });
          }
        }
        if (isExceeded100Px) {
          if (_scrollController.offset <= 100) {
            setState(() {
              isExceeded100Px = false;
            });
          }
        }
      });

    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300))
      ..forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      onDrawerChanged: (isOpened) {
        if (isOpened) {
          _controller.reverse();
          setState(() {});
        } else {
          _controller.forward();
          setState(() {});
        }
      },
      drawer: SizedBox(
        width: 200,
        child: Drawer(
          backgroundColor: cHeaderBackground,
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
            shrinkWrap: true,
            children: [
              ListTile(
                  title: NavbarItem(
                      text: "Home",
                      onPress: () => scrollToPanel(ScrollToPanel.header))),
              ListTile(
                  title: NavbarItem(
                      text: "About",
                      onPress: () => scrollToPanel(ScrollToPanel.aboutMe))),
              ListTile(
                  title: NavbarItem(
                      text: "Services",
                      onPress: () => scrollToPanel(ScrollToPanel.services))),
              ListTile(
                  title: NavbarItem(
                      text: "Projects",
                      onPress: () =>
                          scrollToPanel(ScrollToPanel.featuredProjects))),
              ListTile(
                  title: NavbarItem(
                      text: "Pricing",
                      onPress: () => scrollToPanel(ScrollToPanel.pricePlan))),
              ListTile(
                  title: NavbarItem(
                      text: "Contact",
                      onPress: () => scrollToPanel(ScrollToPanel.footer))),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                MeasureSize(
                  onChange: (size) {
                    headerHeight = size.height;
                  },
                  child: const Header(),
                ),
                MeasureSize(
                  onChange: (size) {
                    aboutHeight = size.height;
                  },
                  child: const About(),
                ),
                MeasureSize(
                  onChange: (size) {
                    serviceHeight = size.height;
                  },
                  child: const ServicePanel(),
                ),
                MeasureSize(
                  onChange: (size) {
                    featuredProjectsHeight = size.height;
                  },
                  child: const FeaturedProjects(),
                ),
                MeasureSize(
                  onChange: (size) {
                    feedbackHeight = size.height;
                  },
                  child: const FeedbackPanel(),
                ),
                MeasureSize(
                  onChange: (size) {
                    pricePlanHeight = size.height;
                  },
                  child: const PricePlan(),
                ),
                MeasureSize(
                  onChange: (size) {
                    contactHeight = size.height;
                  },
                  child: const Contact(),
                ),
                MeasureSize(
                  onChange: (size) {
                    footerHeight = size.height;
                  },
                  child: const Footer(),
                ),
              ],
            ),
          ),

          /// Navigation bar
          Align(
            alignment: Alignment.topCenter,
            child: Material(
                elevation: isExceeded100Px ? 10 : 0,
                child: nv.NavigationBar(
                  controller: _controller,
                  scrollToPanel: scrollToPanel,
                )),
          ),
        ],
      ),
    );
  }

  /// scrolling to specific panal based on the height of each section
  void scrollToPanel(ScrollToPanel scrollTo) {
    Curve curve = Curves.fastOutSlowIn;
    Duration duration = const Duration(milliseconds: 600);

    /// extra padding from start
    double offset = 30;
    if (scrollTo == ScrollToPanel.header) {
      _scrollController.animateTo(0, duration: duration, curve: curve);
    } else if (scrollTo == ScrollToPanel.aboutMe) {
      _scrollController.animateTo(headerHeight - offset,
          duration: duration, curve: curve);
    } else if (scrollTo == ScrollToPanel.services) {
      _scrollController.animateTo(headerHeight + aboutHeight - offset,
          duration: duration, curve: curve);
    } else if (scrollTo == ScrollToPanel.featuredProjects) {
      _scrollController.animateTo(
          headerHeight + aboutHeight + serviceHeight - offset,
          duration: duration,
          curve: curve);
    } else if (scrollTo == ScrollToPanel.feedback) {
      _scrollController.animateTo(
          headerHeight +
              aboutHeight +
              serviceHeight +
              featuredProjectsHeight -
              offset,
          duration: duration,
          curve: curve);
    } else if (scrollTo == ScrollToPanel.pricePlan) {
      _scrollController.animateTo(
          headerHeight +
              aboutHeight +
              serviceHeight +
              featuredProjectsHeight +
              feedbackHeight -
              offset,
          duration: duration,
          curve: curve);
    } else if (scrollTo == ScrollToPanel.footer) {
      _scrollController.animateTo(
          headerHeight +
              aboutHeight +
              serviceHeight +
              featuredProjectsHeight +
              feedbackHeight -
              offset +
              pricePlanHeight,
          duration: duration,
          curve: curve);
    }
  }
}
