import 'package:flutter/material.dart';
import 'package:flutter_app/home_trips.dart';
import 'package:flutter_app/profile_trips.dart';
import 'package:flutter_app/search_trips.dart';

class PlatziTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return _PlatziTrips();
  }

}

class _PlatziTrips extends State<PlatziTrips>{

  int indexTap = 0;
  final List<Widget> widgetsChildren = [
    HomeTrips(),
    Search(),
    ProfileTrips()
  ];

  void onTapTapped(int index){
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTap,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home
              ),
              title: Text(
                ""
              )
            ),
            BottomNavigationBarItem(
                icon: Icon(
                    Icons.search
                ),
                title: Text(
                    ""
                )
            ),
            BottomNavigationBarItem(
                icon: Icon(
                    Icons.person
                ),
                title: Text(
                    ""
                )
            )
          ]
        ),
      ),
    );
  }

}