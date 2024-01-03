import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyCustomUI extends StatefulWidget {
  @override
  _MyCustomUIState createState() => _MyCustomUIState();
}

class _MyCustomUIState extends State<MyCustomUI>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;
  Animation<double>? _animation2;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _animation = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: _controller!, curve: Curves.easeOut))
      ..addListener(() {
        setState(() {});
      });

    _animation2 = Tween<double>(begin: 0, end: -30)
        .animate(CurvedAnimation(parent: _controller!, curve: Curves.easeOut));

    _controller!.forward();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: AppBar(
              backgroundColor: Colors.white.withOpacity(.05),
              elevation: 0,
              title: Text(
                ' Your App\'s name',
                style: TextStyle(
                  fontSize: _w / 17,
                  color: Colors.white.withOpacity(.7),
                  fontWeight: FontWeight.w400,
                ),
              ),
              actions: [
                IconButton(
                  tooltip: 'Settings',
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  icon:
                      Icon(Icons.settings, color: Colors.white.withOpacity(.7)),
                  onPressed: () {
                    HapticFeedback.lightImpact();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return RouteWhereYouGo2();
                        },
                      ),
                    );
                  },
                ),
                Text('' ''),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xff2A40CE),
      body: ListView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          SizedBox(height: _w / 13),
          cardsGroup(
            'Example',
            'Example',
            Icons.favorite,
            Icons.favorite,
            RouteWhereYouGo2(),
            RouteWhereYouGo2(),
          ),
          cardsGroup(
            'Example',
            'Example',
            Icons.favorite,
            Icons.favorite,
            RouteWhereYouGo2(),
            RouteWhereYouGo2(),
          ),
          cardsGroup(
            'Example',
            'Example',
            Icons.favorite,
            Icons.favorite,
            RouteWhereYouGo2(),
            RouteWhereYouGo2(),
          ),
          cardsGroup(
            'Example',
            'Example',
            Icons.favorite,
            Icons.favorite,
            RouteWhereYouGo2(),
            RouteWhereYouGo2(),
          ),
          cardsGroup(
            'Example',
            'Example',
            Icons.favorite,
            Icons.favorite,
            RouteWhereYouGo2(),
            RouteWhereYouGo2(),
          ),
          cardsGroup(
            'Example',
            'Example',
            Icons.favorite,
            Icons.favorite,
            RouteWhereYouGo2(),
            RouteWhereYouGo2(),
          ),
          cardsGroup(
            'Example',
            'Example',
            Icons.favorite,
            Icons.favorite,
            RouteWhereYouGo2(),
            RouteWhereYouGo2(),
          ),
        ],
      ),
    );
  }

  Widget cardsGroup(String title1, String title2, IconData icon1,
      IconData icon2, Widget route1, Widget route2) {
    double _w = MediaQuery.of(context).size.width;
    return Opacity(
      opacity: _animation!.value,
      child: Transform.translate(
        offset: Offset(0, _animation2!.value),
        child: Container(
          margin: EdgeInsets.fromLTRB(_w / 25, _w / 25, _w / 25, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              cardWidget(title1, icon1, route1),
              cardWidget(title2, icon2, route2),
            ],
          ),
        ),
      ),
    );
  }

  Widget cardWidget(String title, IconData icon, Widget route) {
    double _w = MediaQuery.of(context).size.width;
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        HapticFeedback.lightImpact();
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return route;
            },
          ),
        );
      },
      child: Container(
        height: _w / 2,
        width: _w / 2.28,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon,
              color: Colors.white.withOpacity(.6),
              size: 40,
            ),
            Text(
              title,
              maxLines: 4,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 23,
                  color: Colors.white.withOpacity(.7),
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class RouteWhereYouGo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text('EXAMPLE  PAGE',
            style: TextStyle(
                color: Colors.black.withOpacity(.7),
                fontWeight: FontWeight.w600,
                letterSpacing: 1)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black.withOpacity(.8)),
          onPressed: () => Navigator.maybePop(context),
        ),
      ),
    );
  }
}
