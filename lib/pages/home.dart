import 'package:flutter/material.dart';
import 'package:learning_app/components/carousels.dart';
import 'package:learning_app/components/custompainters.dart';
import 'package:learning_app/components/listviwes/listviews.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget _buildProfileAndNotifies() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
          customBorder: CircleBorder(),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/logos/home/user_dp.jpg'),
            radius: MediaQuery.of(context).size.height * 0.05,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.07,
          child: Row(
            children: [
              FloatingActionButton(
                onPressed: () => print('notifications pressed'),
                backgroundColor: Colors.white,
                splashColor: Theme.of(context).primaryColor,
                child: Icon(
                  Icons.notifications_outlined,
                  color: Colors.black,
                ),
              ),
              FloatingActionButton(
                onPressed: () => print('Options button pressed'),
                backgroundColor: Theme.of(context).primaryColor,
                splashColor: Colors.white,
                child: Icon(Icons.notes),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildWelcomeMsg() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hey Kid,',
            style: TextStyle(
              fontSize: MediaQuery.of(context).textScaleFactor * 18,
              color: Colors.grey[700],
            ),
          ),
          Text(
            'Welcome back',
            style: TextStyle(
              fontSize: MediaQuery.of(context).textScaleFactor * 20,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFlexibleSpace() {
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
      child: Stack(
        children: [
          FlexibleSpaceBar(
            background: CustomPaint(
              painter: HomeSABPainter(),
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.015,
                  horizontal: MediaQuery.of(context).size.height * 0.025,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildWelcomeMsg(),
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.015,
                horizontal: MediaQuery.of(context).size.width * 0.03,
              ),
              child: _buildProfileAndNotifies(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCircleBtnforMenu(
      String title, Color color, AssetImage image, Function onTap) {
    return Expanded(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.135,
            width: double.infinity,
            child: InkWell(
              onTap: onTap,
              customBorder: CircleBorder(),
              splashColor: Colors.purple[900],
              child: Container(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.grey[350],
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: image,
                      scale: MediaQuery.of(context).size.height * 0.02,
                    ),
                    color: color,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: MediaQuery.of(context).textScaleFactor * 12,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCircleBtnMenu() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildCircleBtnforMenu(
          'Online class',
          Colors.pink[200],
          AssetImage('assets/logos/home/online_class.png'),
          () => print('online class taped'),
        ),
        _buildCircleBtnforMenu(
          'Time table',
          Colors.lightBlue[200],
          AssetImage('assets/logos/home/time_table.png'),
          () => print('time table taped'),
        ),
        _buildCircleBtnforMenu(
          'Attendance',
          Colors.yellow[400],
          AssetImage('assets/logos/home/attendance.png'),
          () => print('attendance taped'),
        ),
        _buildCircleBtnforMenu(
          'Report Card',
          Colors.green[300],
          AssetImage('assets/logos/home/report_card.png'),
          () => print('report card taped'),
        ),
      ],
    );
  }

  Widget _buildTodaysHWListSection() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              child: Text(
                'Today\'s Homework',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).textScaleFactor * 17.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: GestureDetector(
                onTap: () {
                  print('view all');
                },
                child: Text(
                  'View all',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: MediaQuery.of(context).textScaleFactor * 14.0,
                  ),
                ),
              ),
            ),
          ],
        ),
        TodaysHWList(),
      ],
    );
  }

  Widget _buildPerformanceListSection() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              child: Text(
                'Performance',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        PerformanceList(),
      ],
    );
  }

  Widget _buildListOfLists() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.03,
      ),
      child: Container(
        child: Column(
          children: [
            _buildTodaysHWListSection(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            _buildPerformanceListSection(),
          ],
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
          leading: Container(),
          expandedHeight: MediaQuery.of(context).size.height * 0.237,
          flexibleSpace: _buildFlexibleSpace(),
        ),
        SliverToBoxAdapter(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.02,
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.03,
                    ),
                    child: Column(
                      children: [
                        _buildCircleBtnMenu(),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                      ],
                    ),
                  ),
                  CarouselList(),
                  _buildListOfLists(),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
