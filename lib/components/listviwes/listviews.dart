import 'package:flutter/material.dart';
import 'package:learning_app/components/listviwes/listcontents.dart';
import 'package:learning_app/pages/journey/journey.dart';

class TodaysHWCard extends StatelessWidget {
  TodaysHWCard({this.content});

  final TodaysHWListContents content;

  Widget _buildSubImg(context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      child: Image.asset(content.subImage),
    );
  }

  Widget _buildSubName(context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            content.subject,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: MediaQuery.of(context).textScaleFactor * 15.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            content.lessonNo,
            style: TextStyle(
              color: Colors.grey[900],
              fontSize: MediaQuery.of(context).textScaleFactor * 13.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            content.lessonName,
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: MediaQuery.of(context).textScaleFactor * 10.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTypeOfHW(context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(flex: 1),
          Container(
            height: MediaQuery.of(context).size.height * 0.055,
            child: Image.asset(content.typeImage),
          ),
          Spacer(flex: 2),
          Text(
            content.typeName,
            style: TextStyle(
              fontSize: MediaQuery.of(context).textScaleFactor * 10.0,
            ),
          ),
          Spacer(flex: 1),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('HW');
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.16,
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.04,
          horizontal: MediaQuery.of(context).size.width * 0.12,
        ),
        decoration: BoxDecoration(
          color: Colors.grey[50],
          borderRadius: BorderRadius.circular(18.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 2.0,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildSubImg(context),
            Spacer(flex: 1),
            _buildSubName(context),
            Spacer(flex: 2),
            _buildTypeOfHW(context),
          ],
        ),
      ),
    );
  }
}

class TodaysHWList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: todaysHWContents.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            TodaysHWCard(
              content: todaysHWContents[index],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          ],
        );
        return null;
        return null;
        return null;
        return null;
      },
    );
  }
}

class PerformanceCard extends StatelessWidget {
  PerformanceCard({this.content});

  final PerformanceListContents content;

  Widget _buildSubImg(context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      child: Image.asset(content.subImage),
    );
  }

  Widget _buildSubName(context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            content.subject,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: MediaQuery.of(context).textScaleFactor * 15.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            content.lessonNo,
            style: TextStyle(
              color: Colors.grey[900],
              fontSize: MediaQuery.of(context).textScaleFactor * 13.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            content.lessonName,
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: MediaQuery.of(context).textScaleFactor * 10.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTypeOfHW(context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(flex: 1),
          Container(
            height: MediaQuery.of(context).size.height * 0.055,
            child: Image.asset(content.typeImage),
          ),
          Spacer(flex: 2),
          Text(
            content.typeName,
            style: TextStyle(
              fontSize: MediaQuery.of(context).textScaleFactor * 10.0,
            ),
          ),
          Spacer(flex: 1),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('HW');
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.16,
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.04,
          horizontal: MediaQuery.of(context).size.width * 0.12,
        ),
        decoration: BoxDecoration(
          color: Colors.grey[50],
          borderRadius: BorderRadius.circular(18.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 2.0,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildSubImg(context),
            Spacer(flex: 1),
            _buildSubName(context),
            Spacer(flex: 2),
            _buildTypeOfHW(context),
          ],
        ),
      ),
    );
  }
}

class PerformanceList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: performanceContents.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            PerformanceCard(
              content: performanceContents[index],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          ],
        );
        return null;
        return null;
        return null;
        return null;
      },
    );
  }
}

class SubjectCard extends StatefulWidget {
  SubjectCard({this.content});

  final SubjectListContent content;

  String subjectName() {
    return content.subjectName;
  }

  @override
  _SubjectCardState createState() => _SubjectCardState();
}

class _SubjectCardState extends State<SubjectCard> {
  Widget _buildSubImg() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.09,
      child: Image.asset(widget.content.subjectImage),
    );
  }

  Widget _buildSubName() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.content.subjectName,
            style: TextStyle(
              color: Colors.blueGrey[900],
              fontFamily: 'AlfaSlabOne',
              fontSize: MediaQuery.of(context).textScaleFactor * 20,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPercentage() {
    return CircleAvatar(
      radius: MediaQuery.of(context).size.aspectRatio * 45,
      backgroundColor: Theme.of(context).primaryColor,
      child: widget.content.percentage == 100
          ? Image.asset(
              'assets/logos/courses/check.png',
              height: MediaQuery.of(context).size.height * 0.05,
            )
          : RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '${widget.content.percentage}',
                    style: TextStyle(
                      color: Colors.grey[50],
                      fontFamily: 'Chango',
                      fontSize: MediaQuery.of(context).textScaleFactor * 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text: '%',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).textScaleFactor * 12,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  ScaffoldFeatureController _showCompleteSnackBar() {
    return Scaffold.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Theme.of(context).primaryColor,
        duration: Duration(
          seconds: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(10),
          ),
        ),
        content: Text(
          'Completed!',
          style: TextStyle(
            fontSize: MediaQuery.of(context).textScaleFactor * 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.content.percentage != 100) {
          journeyPageController.jumpToPage(1);
          setState(() {
            subject = widget.content.subjectName;
            totalChapters = widget.content.totalChapters;
          });
        } else {
          _showCompleteSnackBar();
        }
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.19,
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.025,
          horizontal: MediaQuery.of(context).size.width * 0.08,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: widget.content.percentage == 100
                ? [Colors.greenAccent[400], Colors.green[400]]
                : [Colors.redAccent[400], Colors.red[400]],
          ),
          borderRadius: BorderRadius.circular(1),
          boxShadow: [
            BoxShadow(
              color: widget.content.percentage == 100
                  ? Colors.green[900]
                  : Colors.red[900],
              blurRadius: MediaQuery.of(context).size.height * 0.01,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildSubImg(),
            Spacer(flex: 1),
            _buildSubName(),
            Spacer(flex: 3),
            _buildPercentage(),
          ],
        ),
      ),
    );
  }
}

class SubjectList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: subjectListContents.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            SubjectCard(content: subjectListContents[index]),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          ],
        );
        return null;
        return null;
        return null;
        return null;
      },
    );
  }
}

class ChapterCard extends StatefulWidget {
  ChapterCard({this.content});

  final ChaptersListContent content;

  @override
  _ChapterCardState createState() => _ChapterCardState();
}

class _ChapterCardState extends State<ChapterCard> {
  Widget _buildBlackBoardImage() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      child: Image.asset('assets/logos/courses/blackboard.png'),
    );
  }

  Widget _buildChapterName() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Chapter ${widget.content.chapterNo}',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: MediaQuery.of(context).textScaleFactor * 15.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            widget.content.chapterName,
            style: TextStyle(
              color: Colors.grey[900],
              fontSize: MediaQuery.of(context).textScaleFactor * 13.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            'Topics ${widget.content.totalTopics}',
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: MediaQuery.of(context).textScaleFactor * 10.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChapterStatus() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          widget.content.status == 'running'
              ? Column(
                  children: [
                    InkWell(
                      onTap: () => print('chapter'),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.067,
                        width: MediaQuery.of(context).size.width * 0.27,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[900],
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Topics',
                                style: TextStyle(color: Colors.white),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: MediaQuery.of(context).textScaleFactor *
                                    15.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.008,
                    ),
                  ],
                )
              : InkWell(
                  onTap: () => print('chapter'),
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.height * 0.045,
                    backgroundColor: Colors.deepPurple[900],
                    child: Image.asset(
                      widget.content.status == 'done'
                          ? 'assets/logos/courses/check.png'
                          : 'assets/logos/courses/lock.png',
                      height: MediaQuery.of(context).size.height * 0.045,
                    ),
                  ),
                ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.21,
      width: double.infinity,
      child: Stack(
        children: [
          InkWell(
            onTap: () => print('Chapter'),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.17,
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.035,
                horizontal: MediaQuery.of(context).size.width * 0.18,
              ),
              decoration: BoxDecoration(
                color: widget.content.color,
                borderRadius: BorderRadius.circular(18.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2.0,
                  )
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildBlackBoardImage(),
                      Spacer(flex: 1),
                      _buildChapterName(),
                      Spacer(flex: 1),
                    ],
                  ),
                ],
              ),
            ),
          ),
          _buildChapterStatus(),
        ],
      ),
    );
  }
}

class ChapterList extends StatelessWidget {
  ChapterList({this.subject});

  final List<ChaptersListContent> subject;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: chemistry.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ChapterCard(content: subject[index]),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          ],
        );
        return null;
        return null;
        return null;
        return null;
      },
    );
  }
}
