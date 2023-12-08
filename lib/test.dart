
import 'package:ecommerce/Screens/home_screen.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    ProfileScreenTest(),
    FavoriteScreenTest(),
    ShareScreenTest(),
    LockScreenTest()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined),
              label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),
              label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.local_offer_outlined),
              label: "Offer"),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),
              label: "Account"),
        ],
      ),
    );
  }
}

class HomeScreenTest extends StatelessWidget {
  const HomeScreenTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      "HomeScreenTest",
      style: TextStyle(fontSize: 20),
    ));
  }
}

class ProfileScreenTest extends StatelessWidget {
  const ProfileScreenTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      "ProfileScreenTest",
      style: TextStyle(fontSize: 20),
    ));
  }
}

class FavoriteScreenTest extends StatelessWidget {
  const FavoriteScreenTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      "FavoriteScreenTest",
      style: TextStyle(fontSize: 20),
    ));
  }
}

class ShareScreenTest extends StatelessWidget {
  const ShareScreenTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      "HomeScreenTest",
      style: TextStyle(fontSize: 20),
    ));
  }
}

class LockScreenTest extends StatelessWidget {
  const LockScreenTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      "LockScreenTest",
      style: TextStyle(fontSize: 20),
    ));
  }
}
