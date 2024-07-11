import 'package:flutter/material.dart';
import 'package:learning_app/components/custompainters.dart';
import 'package:learning_app/components/listviwes/listviews.dart';
import 'package:learning_app/components/sabt.dart';

class Subjects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
          pinned: true,
          centerTitle: true,
          stretch: true,
          expandedHeight: MediaQuery.of(context).size.height * 0.304,
          leading: Container(),
          title: SABT(child: Text('Courses')),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [
                  Color.fromARGB(255, 80, 4, 224),
                  Color.fromARGB(255, 106, 20, 224),
                  Color.fromARGB(255, 135, 40, 225),
                ],
              ),
            ),
            child: FlexibleSpaceBar(
              background: CustomPaint(
                painter: CoursesSABPainter(),
                child: SafeArea(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Spacer(
                              flex: 8,
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.2025,
                              child: Image.asset(
                                  'assets/logos/courses/graduation.png'),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Courses',
                              style: TextStyle(
                                color: Colors.grey[50],
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.075,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.03,
            ),
            child: SubjectList(),
          ),
        ),
      ],
    );
  }
}
