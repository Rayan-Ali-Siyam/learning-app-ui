import 'package:flutter/material.dart';
import 'package:learning_app/components/sabt.dart';

class Quized {
  Quized({this.subject, this.color, this.img});

  String subject;
  String img;
  Color color;
}

List<Quized> quizes = [
  Quized(
    subject: 'Accounting',
    img: 'assets/logos/quiz/accounting.png',
    color: Colors.blue[300],
  ),
  Quized(
    subject: 'Finance',
    img: 'assets/logos/quiz/finance.png',
    color: Colors.pink[300],
  ),
  Quized(
    subject: 'Biology',
    img: 'assets/logos/quiz/dna.png',
    color: Colors.green[300],
  ),
  Quized(
    subject: 'Physics',
    img: 'assets/logos/quiz/atom.png',
    color: Colors.red[300],
  ),
  Quized(
    subject: 'Math',
    img: 'assets/logos/quiz/compass.png',
    color: Colors.yellow[300],
  ),
  Quized(
    subject: 'Chemistry',
    img: 'assets/logos/quiz/lab-tool.png',
    color: Colors.brown[300],
  ),
];

class CatagoriezedQuiz {
  CatagoriezedQuiz({this.catagoryName, this.img, this.color});

  String catagoryName;
  String img;
  Color color;
}

List<CatagoriezedQuiz> catagoriezedQuizes = [
  CatagoriezedQuiz(
    catagoryName: 'Puzzles',
    img: 'assets/logos/quiz/jigsaw.png',
    color: Colors.greenAccent,
  ),
  CatagoriezedQuiz(
    catagoryName: 'QnA',
    img: 'assets/logos/quiz/question.png',
    color: Colors.blueAccent,
  ),
  CatagoriezedQuiz(
    catagoryName: 'MCQ',
    img: 'assets/logos/quiz/test.png',
    color: Colors.yellowAccent,
  ),
  CatagoriezedQuiz(
    catagoryName: 'Physics',
    img: 'assets/logos/quiz/atom.png',
    color: Colors.orangeAccent,
  ),
  CatagoriezedQuiz(
    catagoryName: 'Biology',
    img: 'assets/logos/quiz/dna.png',
    color: Colors.pinkAccent,
  ),
  CatagoriezedQuiz(
    catagoryName: 'Accounting',
    img: 'assets/logos/quiz/accounting.png',
    color: Colors.redAccent,
  ),
];

class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
          pinned: true,
          primary: true,
          stretch: true,
          expandedHeight: MediaQuery.of(context).size.height * 0.304,
          centerTitle: true,
          leading: Container(),
          title: SABT(child: Text('Quiz')),
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
            child: SafeArea(
              child: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/logos/quiz/quiz_background.png',
                  fit: BoxFit.cover,
                ),
                stretchModes: [
                  StretchMode.blurBackground,
                  StretchMode.zoomBackground,
                  StretchMode.fadeTitle
                ],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.04,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.03,
                  ),
                  child: Text(
                    'Quizes For You',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).textScaleFactor * 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.005,
                ),
                InkWell(
                  onTap: () {
                    print('hey');
                  },
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.42,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: quizes.length,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.4,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                color: quizes[index].color,
                                borderRadius: BorderRadius.circular(15.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey[700],
                                    blurRadius: 2.0,
                                  )
                                ],
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical:
                                      MediaQuery.of(context).size.height * 0.03,
                                  horizontal:
                                      MediaQuery.of(context).size.width * 0.04,
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      quizes[index].subject,
                                      style: TextStyle(
                                        fontSize: MediaQuery.of(context)
                                                .textScaleFactor *
                                            15,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Image.asset(
                                      quizes[index].img,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.2,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                        return null;
                        return null;
                        return null;
                        return null;
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.03,
                  ),
                  child: Text(
                    'Quizes By Category',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).textScaleFactor * 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.20,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: quizes.length,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  print('hey');
                                },
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.16,
                                  width:
                                      MediaQuery.of(context).size.width * 0.24,
                                  decoration: BoxDecoration(
                                    color: catagoriezedQuizes[index].color,
                                    borderRadius: BorderRadius.circular(15.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey[700],
                                        blurRadius: 2.0,
                                      )
                                    ],
                                    image: DecorationImage(
                                      image: AssetImage(
                                        catagoriezedQuizes[index].img,
                                      ),
                                      scale:
                                          MediaQuery.of(context).size.height *
                                              0.015,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                catagoriezedQuizes[index].catagoryName,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      );
                      return null;
                      return null;
                      return null;
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
