import 'package:flutter/material.dart';
import 'package:learning_app/pages/journey/chapters.dart';
import 'package:learning_app/pages/journey/subjects.dart';

PageController journeyPageController = PageController(
  initialPage: 0,
);

String subject;
int totalChapters;

class Journey extends StatefulWidget {
  @override
  _JourneyState createState() => _JourneyState();
}

class _JourneyState extends State<Journey> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      controller: journeyPageController,
      onPageChanged: (page) {
        setState(() {
          journeyPageController = PageController(initialPage: page);
        });
      },
      children: [
        Subjects(),
        Chapters(
          subjectName: subject,
        ),
      ],
    );
  }
}
