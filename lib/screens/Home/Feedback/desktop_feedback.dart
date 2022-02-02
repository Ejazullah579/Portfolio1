import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/classes/feedback_class.dart';
import 'package:portfolio/services/static_data.dart';

class DesktopFeedback extends StatelessWidget {
  const DesktopFeedback({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: ListView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 50),
        scrollDirection: Axis.horizontal,
        itemCount: feedbackList.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 20),
          child: FeedbackWidget(
            feedback: feedbackList[index],
          ),
        ),
      ),
    );
  }
}

class FeedbackWidget extends StatefulWidget {
  const FeedbackWidget({
    Key? key,
    required this.feedback,
    this.width = 550,
  }) : super(key: key);
  final FeedbackClass feedback;
  final double width;

  @override
  State<FeedbackWidget> createState() => _FeedbackWidgetState();
}

class _FeedbackWidgetState extends State<FeedbackWidget> {
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
      child: Container(
        width: widget.width,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("assets/pngs/self.png"))),
            ),
            const SizedBox(width: 10),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Lorem ipsum dolor sit amet consectetur adipiscing elit curabitur pellentesque aliquet, bibendum inceptos lectus tortor lobortis ridiculus ad dignissim praesent.",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  const SizedBox(height: 10),
                  FeedbackItemText(
                    isHovering: isHovering,
                    title: "Hariet Maxwell",
                    description: "CEO of Facbook",
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class FeedbackItemText extends StatefulWidget {
  const FeedbackItemText({
    Key? key,
    required this.title,
    required this.description,
    this.isHovering = false,
  }) : super(key: key);
  final String title;
  final String description;
  final bool isHovering;

  @override
  State<FeedbackItemText> createState() => _FeedbackItemTextState();
}

class _FeedbackItemTextState extends State<FeedbackItemText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: GoogleFonts.poppins(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
            color: widget.isHovering
                ? const Color.fromRGBO(112, 170, 253, 1)
                : Colors.black,
          ),
        ),
        Text(
          widget.description,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}
