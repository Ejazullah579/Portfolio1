import 'package:flutter/material.dart';
import 'package:portfolio/screens/Home/Feedback/desktop_feedback.dart';
import 'package:portfolio/services/static_data.dart';

class MobileFeedback extends StatelessWidget {
  const MobileFeedback({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 210,
      child: ListView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        scrollDirection: Axis.horizontal,
        itemCount: feedbackList.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 20),
          child: FeedbackWidget(
            width: MediaQuery.of(context).size.width - 80,
            feedback: feedbackList[index],
          ),
        ),
      ),
    );
    ;
  }
}
