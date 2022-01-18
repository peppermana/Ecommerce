import 'package:flutter/material.dart';
import 'package:latihan_e_commerce/Pages/about/about.dart';
import 'package:latihan_e_commerce/Pages/feed/feed.dart';
import 'package:latihan_e_commerce/Pages/home/home.dart';

class MainTabbar extends StatefulWidget {
  const MainTabbar({Key? key}) : super(key: key);

  @override
  _MainTabbarState createState() => _MainTabbarState();
}

class _MainTabbarState extends State<MainTabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Yummy Restaurant"),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart),
                color: Colors.white),
            PopupMenuButton(
              icon: Icon(Icons.more_vert, color: Colors.white),
              itemBuilder: (itmcontext) => [],
            ),
          ],
        ),

        body: TabBarView(
          children: [
            HomePage(),
            FeedPage(),
            AboutPage(),
          ],
        ),
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.home_outlined),
              text: "Home",
            ),
            Tab(
              icon: Icon(Icons.feed_outlined),
              text: "Feed",
            ),
            Tab(
              icon: Icon(Icons.person_outline_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
