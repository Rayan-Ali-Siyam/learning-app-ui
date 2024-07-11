import 'package:flutter/material.dart';
import 'package:learning_app/pages/quiz.dart';
import 'package:learning_app/pages/home.dart';
import 'package:learning_app/pages/journey/journey.dart';
import 'package:learning_app/pages/leaderboard.dart';
import 'package:learning_app/pages/notes.dart';

class BasePage extends StatefulWidget {
  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  PageController _pageController = PageController(
    initialPage: 0,
  );

  int currentIndex = 0;

  List<int> visitedPageList = [0];

  void updateVisitedPageList(index) {
    visitedPageList.add(index);
    if (visitedPageList.length == 6) {
      visitedPageList.removeAt(1);
    }
  }

  bool visitedPageListNotUpdated = true;

  bool onWillPop() {
    if (visitedPageList.last == 1 && journeyPageController.initialPage == 1) {
      journeyPageController.jumpToPage(0);
      return false;
    } else if (visitedPageList.length != 1) {
      visitedPageList.removeLast();
      _pageController.jumpToPage(visitedPageList.last);
      return false;
    } else {
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.sync(onWillPop),
      child: Scaffold(
        drawer: _buildDrawer(context),
        body: PageView(
          controller: _pageController,
          onPageChanged: (page) {
            setState(() {
              currentIndex = page;
              if (visitedPageListNotUpdated) {
                if (visitedPageList.last != currentIndex) {
                  updateVisitedPageList(currentIndex);
                } else {
                  return;
                }
              }
              visitedPageListNotUpdated = true;
            });
          },
          children: [
            Home(),
            Journey(),
            Notes(),
            Quiz(),
            LeaderBoard(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.grey[500],
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              if (visitedPageList.last != index) {
                updateVisitedPageList(index);
                visitedPageListNotUpdated = false;
              } else {
                return;
              }
              _pageController.animateToPage(
                index,
                duration: Duration(milliseconds: 200),
                curve: Curves.linear,
              );
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Expanded(
                child: Container(
                  color: Colors.grey[300],
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_rounded),
              label: 'Courses',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_books_outlined),
              label: 'Notes',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.help_center_outlined),
              label: 'Quiz',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.emoji_events_outlined),
              label: 'Leaderboard',
            ),
          ],
        ),
      ),
    );
  }

  Drawer _buildDrawer(BuildContext context) {
    return Drawer(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromARGB(255, 80, 4, 224),
              Color.fromARGB(255, 106, 20, 224),
              Color.fromARGB(255, 135, 40, 225),
            ],
          ),
        ),
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    customBorder: CircleBorder(),
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/logos/home/user_dp.jpg'),
                      radius: MediaQuery.of(context).size.height * 0.06,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Rayan Ali Siyam',
                    style: TextStyle(
                      color: Colors.grey[50],
                      fontSize: MediaQuery.of(context).textScaleFactor * 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white24,
                border: Border(bottom: BorderSide(color: Colors.black)),
              ),
              child: ListTile(
                onTap: () {},
                leading: Icon(Icons.account_circle_rounded),
                title: Text(
                  'Accounts',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).textScaleFactor * 17,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.white24,
              child: ListTile(
                onTap: () {},
                leading: Icon(Icons.settings),
                title: Text(
                  'Settings',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).textScaleFactor * 17,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
