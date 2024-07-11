import 'package:flutter/material.dart';
import 'package:learning_app/components/custompainters.dart';
import 'package:learning_app/components/sabt.dart';

class HighScorer {
  HighScorer({this.name, this.score});
  String name;
  int score;
}

List<HighScorer> highScorers = [
  HighScorer(
    name: 'Rayan Ali Siyam',
    score: 4030234,
  ),
  HighScorer(
    name: 'Donald Trump',
    score: 3330234,
  ),
  HighScorer(
    name: 'Choton Kaka',
    score: 2330004,
  ),
  HighScorer(
    name: 'Gabbar Singh',
    score: 2030234,
  ),
  HighScorer(
    name: 'Bill Gates',
    score: 1030234,
  ),
  HighScorer(
    name: 'Shakib Khan',
    score: 1020234,
  ),
  HighScorer(
    name: 'Anonto Jolil',
    score: 830234,
  ),
  HighScorer(
    name: 'Hero Alam',
    score: 801234,
  ),
  HighScorer(
    name: 'Rakib',
    score: 800134,
  ),
  HighScorer(
    name: 'Raj',
    score: 340234,
  ),
];

class LeaderBoard extends StatelessWidget {
  Widget _buildRankingTitle(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Spacer(),
        Text(
          'LeaderBoard',
          style: TextStyle(
            color: Colors.grey[50],
            fontSize: MediaQuery.of(context).size.width * 0.075,
            fontWeight: FontWeight.w900,
          ),
        ),
        Text(
          'Ranking',
          style: TextStyle(
            color: Colors.purple,
            fontSize: MediaQuery.of(context).size.width * 0.072,
            fontWeight: FontWeight.w900,
          ),
        ),
        Spacer()
      ],
    );
  }

  Widget _buildRankingImg(context) {
    return Column(
      children: [
        Spacer(
          flex: 8,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.2025,
          child: Image.asset('assets/logos/leaderboard/ranking.png'),
        ),
        Spacer(
          flex: 1,
        ),
      ],
    );
  }

  Widget _buildFlexibleSpace(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 80, 4, 224),
            Color.fromARGB(255, 106, 20, 224),
            Color.fromARGB(255, 135, 40, 225),
          ],
        ),
      ),
      child: FlexibleSpaceBar(
        background: CustomPaint(
          painter: LeaderBoardSABPainter(),
          child: SafeArea(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildRankingTitle(context),
                  _buildRankingImg(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
          pinned: true,
          stretch: true,
          expandedHeight: MediaQuery.of(context).size.height * 0.304,
          centerTitle: true,
          leading: Container(),
          title: SABT(child: Text('LeaderBoard')),
          flexibleSpace: _buildFlexibleSpace(context),
        ),
        SliverToBoxAdapter(
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: highScorers.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 2.0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: (index + 1 != 1)
                          ? (index + 1 != 2)
                              ? (index + 1 != 3)
                                  ? [
                                      Colors.grey[200],
                                      Colors.grey[300],
                                    ]
                                  : [
                                      Color.fromARGB(255, 190, 105, 0),
                                      Color.fromARGB(255, 150, 75, 0),
                                    ]
                              : [
                                  Color.fromARGB(255, 192, 192, 192),
                                  Color.fromARGB(255, 128, 128, 128),
                                ]
                          : [
                              Color.fromARGB(255, 255, 215, 0),
                              Color.fromARGB(255, 255, 140, 0),
                            ],
                    ),
                  ),
                  child: ListTile(
                    onTap: () {
                      print('hello');
                    },
                    leading: (index + 1 > 3)
                        ? CircleAvatar(
                            radius: MediaQuery.of(context).size.height * 0.0325,
                            backgroundColor: Colors.grey[300],
                            child: Text(
                              '${index + 1}',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).textScaleFactor * 20,
                              ),
                            ),
                          )
                        : Container(
                            height: MediaQuery.of(context).size.height * 0.065,
                            child: Image.asset(
                              (index + 1 == 1)
                                  ? 'assets/logos/leaderboard/1st.png'
                                  : (index + 1 == 2)
                                      ? 'assets/logos/leaderboard/2nd.png'
                                      : 'assets/logos/leaderboard/3rd.png',
                            ),
                          ),
                    title: Text(
                      highScorers[index].name,
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).textScaleFactor * 18,
                          fontWeight: FontWeight.w700),
                    ),
                    trailing: Text(
                      '${highScorers[index].score}',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).textScaleFactor * 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              );
              return null;
              return null;
              return null;
              return null;
            },
          ),
        )
      ],
    );
  }
}
