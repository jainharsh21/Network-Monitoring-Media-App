import 'package:flutter/material.dart';
import 'package:rjstudio_assignment/constants/colors.dart';

import 'favourites.dart';
import 'home.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  // pagecontroller to naviagte between the pages on the nav bar.
  PageController pageController = PageController();
  int pageIndex = 0;

  // When the page is changed,update the pageIndex to the current page index.
  onPageChanged(int pageIndex) {
    setState(() {
      this.pageIndex = pageIndex;
    });
  }

  // Change the page when clicked on the respective icon from the navigation bar.
  onTapNav(int pageIndex) {
    // can use jumpToPage if animation not needed.
    pageController.animateToPage(
      pageIndex,
      duration: Duration(milliseconds: 300),
      curve: Curves.bounceInOut,
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: <Widget>[
          Home(),
          Favourites(),
        ],
        controller: pageController,
        onPageChanged: onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: SizedBox(
        child: BottomNavigationBar(
          backgroundColor: mainThemeColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          currentIndex: pageIndex,
          onTap: onTapNav,
          items: [
            BottomNavigationBarItem(
              label: "HOME",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "FAVOURITES",
              icon: Icon(Icons.star),
            ),
          ],
        ),
      ),
    );
  }
}
