import 'package:flutter/material.dart';
import 'package:portfolio/screens/Home/Feedback/desktop_feedback.dart';
import 'package:portfolio/services/static_data.dart';

class TabletFeedback extends StatelessWidget {
  const TabletFeedback({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 210,
      child: ListView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 50),
        scrollDirection: Axis.horizontal,
        itemCount: feedbackList.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 20),
          child: FeedbackWidget(
            width: 420,
            feedback: feedbackList[index],
          ),
        ),
      ),
    );
  }
}
