import 'package:flutter/material.dart';

class CarouselContents {
  CarouselContents({this.image, this.morale, this.onTap});

  String image;
  String morale;
  Function onTap;
}

var contents = [
  CarouselContents(
    image: 'assets/logos/home/trophy.png',
    morale: 'Check your leader board ranking',
    onTap: () => print('leaderboard'),
  ),
  CarouselContents(
    image: 'assets/logos/home/trophy.png',
    morale: 'Check your leader board ranking',
    onTap: () => print('leaderboard'),
  ),
  CarouselContents(
    image: 'assets/logos/home/trophy.png',
    morale: 'Check your leader board ranking',
    onTap: () => print('leaderboard'),
  ),
];

class CarouselCard extends StatelessWidget {
  CarouselCard({this.content});

  final CarouselContents content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.03,
      ),
      child: InkWell(
        onTap: content.onTap,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color.fromARGB(255, 80, 4, 224),
                Color.fromARGB(255, 106, 20, 224),
                Color.fromARGB(255, 135, 40, 225),
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.15,
            ),
            child: Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Image.asset(content.image),
                ),
                Spacer(),
                Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Center(
                    child: Text(
                      content.morale,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).textScaleFactor * 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CarouselList extends StatefulWidget {
  @override
  _CarouselListState createState() => _CarouselListState();
}

class _CarouselListState extends State<CarouselList> {
  PageController _carouselPageController = PageController(
    initialPage: 0,
    viewportFraction: 1.0,
  );

  int currentPage = 0;

  void _animateCarousel() {
    Future.delayed(Duration(seconds: 3)).then((_) {
      int nextPage = _carouselPageController.page.round() + 1;

      if (nextPage == contents.length) {
        nextPage = 0;
      }

      _carouselPageController
          .animateToPage(nextPage,
              duration: Duration(seconds: 1), curve: Curves.linear)
          .then((_) => _animateCarousel());
    });
  }

  Widget updateIndicators() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: contents.map(
        (content) {
          var index = contents.indexOf(content);
          return Container(
            height: MediaQuery.of(context).size.height * 0.015,
            width: MediaQuery.of(context).size.width * 0.02,
            margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.015,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: currentPage == index
                  ? Theme.of(context).primaryColor
                  : Color(0xFFA6AEBD),
            ),
          );
        },
      ).toList(),
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _animateCarousel());
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.24,
      child: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.19,
            width: double.infinity,
            child: PageView.builder(
              itemBuilder: (context, index) {
                return Opacity(
                  opacity: currentPage == index ? 1.0 : 0.8,
                  child: CarouselCard(
                    content: contents[index],
                  ),
                );
                return null;
                return null;
                return null;
                return null;
              },
              itemCount: contents.length,
              controller: _carouselPageController,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.006),
          updateIndicators(),
        ],
      ),
    );
  }
}
