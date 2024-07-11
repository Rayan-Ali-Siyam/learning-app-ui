import 'package:flutter/material.dart';
import 'package:learning_app/components/listviwes/listcontents.dart';
import 'package:learning_app/components/listviwes/listviews.dart';
import 'package:learning_app/pages/journey/journey.dart';

class Chapters extends StatefulWidget {
  Chapters({this.subjectName});

  final String subjectName;
  @override
  _ChaptersState createState() => _ChaptersState();
}

class _ChaptersState extends State<Chapters> {
  List<ChaptersListContent> whichSubject() {
    if (widget.subjectName == 'Chemistry') {
      return chemistry;
    } else if (widget.subjectName == 'Mathematics') {
      return math;
    } else if (widget.subjectName == 'Science') {
      return science;
    } else if (widget.subjectName == 'Biology') {
      return biology;
    } else {
      return physics;
    }
  }

  Widget _buildBackButton() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.068,
      child: FloatingActionButton(
        onPressed: () {
          journeyPageController.jumpToPage(0);
        },
        backgroundColor: Colors.white,
        splashColor: Colors.purple[900],
        child: Icon(
          Icons.keyboard_arrow_left,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _buildOptionButton() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.068,
      child: FloatingActionButton(
        onPressed: () => print('Options button pressed'),
        backgroundColor: Colors.deepPurple[900],
        splashColor: Colors.white,
        child: Icon(Icons.notes),
      ),
    );
  }

  Widget _buildButtonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildBackButton(),
        _buildOptionButton(),
      ],
    );
  }

  Widget _buildSubAndTotalChapter() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          subject,
          style: TextStyle(
            fontSize: MediaQuery.of(context).textScaleFactor * 20.0,
            fontWeight: FontWeight.w900,
          ),
        ),
        Text('$totalChapters Chapters'),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          expandedHeight: MediaQuery.of(context).size.height * 0.2,
          backgroundColor: Colors.grey[50],
          leading: Container(),
          flexibleSpace: Stack(
            children: [
              FlexibleSpaceBar(
                background: Container(
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.02,
                      horizontal: MediaQuery.of(context).size.width * 0.03),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildSubAndTotalChapter(),
                    ],
                  ),
                ),
              ),
              SafeArea(
                child: Container(
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.013,
                      horizontal: MediaQuery.of(context).size.width * 0.02),
                  child: _buildButtonRow(),
                ),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.03,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ChapterList(subject: whichSubject()),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
