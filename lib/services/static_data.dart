import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/classes/featured_project_class.dart';
import 'package:portfolio/classes/feedback_class.dart';
import 'package:portfolio/classes/price_plan_class.dart';
import 'package:portfolio/classes/service_class.dart';

/// Header Section Details
const String kUserName = "EJAZ ULLAH";
const String kUserdescription =
    "You will begin to realise why this exercise is called the Dickens Pattern with reference to the ghost showing Scrooge some different futures.";

/// for image change: replace the image self.png in assests/pngs/ with your photo but using the name self.png

/// About Section Details
const String kAboutSectionHeading = "PERSONAL DETAILS";
const String kAboutSectionDetails =
    "Here, I focus on a range of items and features that we use in life without giving them a second thought. such as Coca Cola. Dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.";

/// for image change: replace the image about_me.png in assests/pngs/ with your photo but using the name about_me.png

/// Services Section Details
const String kServiceSectionHeading = "My Offered Services";
const String kServiceSectionDetails =
    "At about this time of year, some months after New Year’s resolutions have been made and kept, or made and neglected.";
final List<Service> services = [
  Service(
    "App Development",
    "It is not because things are difficult that we do not dare; it is because we do not dare that they are difficult",
    const FaIcon(FontAwesomeIcons.mobileAlt),
  ),
  Service(
    "Web Development",
    "It is not because things are difficult that we do not dare; it is because we do not dare that they are difficult",
    const FaIcon(FontAwesomeIcons.desktop),
  ),
  Service(
    "Firebase",
    "It is not because things are difficult that we do not dare; it is because we do not dare that they are difficult",
    const FaIcon(FontAwesomeIcons.database),
  ),
  Service(
    "APi's Integration",
    "It is not because things are difficult that we do not dare; it is because we do not dare that they are difficult",
    const FaIcon(FontAwesomeIcons.appStoreIos),
  ),
  Service(
    "Web Development",
    "It is not because things are difficult that we do not dare; it is because we do not dare that they are difficult",
    const FaIcon(FontAwesomeIcons.desktop),
  ),
  Service(
    "Web Development",
    "It is not because things are difficult that we do not dare; it is because we do not dare that they are difficult",
    const FaIcon(FontAwesomeIcons.desktop),
  ),
];

/// Featured Project Section Details
const String kFeaturedProjectSectionHeading = "Our Latest Featured Projects";
const String kFeaturedProjectSectionDetails =
    "Who are in extremely love with eco friendly system.";

final List<FeaturedProjectClass> featuredProjects = [
  FeaturedProjectClass("2D Vinyl Design", "Vector", "assets/others/exp1.jpg"),
  FeaturedProjectClass("2D Vinyl Design", "Vector", "assets/others/exp2.jpg"),
  FeaturedProjectClass(
      "Creative Poster Design", "Vector", "assets/others/exp3.jpg"),
  FeaturedProjectClass(
      "Embosed Logo Design", "Vector", "assets/others/exp4.jpg"),
  FeaturedProjectClass("3D Helmet Design", "Vector", "assets/others/exp5.jpg"),
  FeaturedProjectClass("2D Vinyl Design", "Vector", "assets/others/exp6.jpg"),
];

/// Feedback Section Details
const String kFeedbackSectionHeading = "Client’s Feedback About Me";
const String kFeedbackSectionDetails =
    "It is very easy to start smoking but it is an uphill task to quit it. Ask any chain smoker or even a person.";

final List<FeedbackClass> feedbackList = [
  FeedbackClass("Hariet Maxwell", "CEO of Facbook", "assets/pngs/self.png",
      "Lorem ipsum dolor sit amet consectetur adipiscing , bibendum inceptos lectus tortor lobortis ridiculus ad dignissim praesent."),
  FeedbackClass("Hariet Maxwell", "CEO of Facbook", "assets/pngs/self.png",
      "Lorem ipsum dolor sit amet consectetur adipiscing , bibendum inceptos lectus tortor lobortis ridiculus ad dignissim praesent."),
  FeedbackClass("Hariet Maxwell", "CEO of Facbook", "assets/pngs/self.png",
      "Lorem ipsum dolor sit amet consectetur adipiscing , bibendum inceptos lectus tortor lobortis ridiculus ad dignissim praesent."),
  FeedbackClass("Hariet Maxwell", "CEO of Facbook", "assets/pngs/self.png",
      "Lorem ipsum dolor sit amet consectetur adipiscing , bibendum inceptos lectus tortor lobortis ridiculus ad dignissim praesent."),
];

/// Featured Project Section Details
const String kPricePlanSectionHeading = "Choose Your Plan";
const String kPricePlanSectionDetails =
    "When someone does something that they know that they shouldn’t do, did they.";

final List<PricePlanClass> pricePlanList = [
  PricePlanClass(
      "Economy",
      "For the individuals",
      [
        "Secure Online Transfer",
        "Unlimited Styles for interface",
        "Reliable Customer Service"
      ],
      199.00),
  PricePlanClass(
      "Business",
      "For the individuals",
      [
        "Secure Online Transfer",
        "Unlimited Styles for interface",
        "Reliable Customer Service"
      ],
      299.00),
  PricePlanClass(
      "Premium",
      "For the individuals",
      [
        "Secure Online Transfer",
        "Unlimited Styles for interface",
        "Reliable Customer Service"
      ],
      399.00),
  PricePlanClass(
      "Exclusive",
      "For the individuals",
      [
        "Secure Online Transfer",
        "Unlimited Styles for interface",
        "Reliable Customer Service"
      ],
      499.00),
];

/// Contact Me Section Details
const String kContactMeSectionDetails =
    "Odio ultrices ut. Etiam ac erat ut enim maximus accumsan vel ac nisl. Duis feug iat bibendum orci, non elementum urna. Cras sit amet sapien aliquam.";
const String kContactMeSectionAddress =
    "Duis feug iat bibendum orci, non elementum urna. Cras sit amet sapien aliquam.";
const String kContactMeSectionPhone = "+92 34859659616";
const String kContactMeSectionEmail = "Storm445548@gmail.com";

/// Contact Me Section Details
const String kFooterSectionDetail1 =
    "We have tested a number of registry fix and clean utilities and present our top 3 list on our site for your convenience.";
const String kFooterSectionCopywrite =
    "Copyright ©2022 All rights reserved | This template is made with ❤ by Ejazullah";
const String kFooterSectionDetail2 = "Stay updated with our latest trends.";
const String kFooterSectionDetail3 = "Let us be social";
