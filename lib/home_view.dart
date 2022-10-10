import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_route_example/routes/router.gr.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (context, tabsRouter) => AppBar(
        backgroundColor: Colors.indigo,
        title: const Text("Flutter Nested Bottom Nav Bar"),
        centerTitle: true,
        leading: const AutoLeadingButton(),
      ),
      backgroundColor: Colors.indigo,
      routes: const [
        TweetRouter(),
        ProfileRouter(),
        NotificationsRouter(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) => BottomNavigationBar(
        currentIndex: tabsRouter.activeIndex,
        onTap: tabsRouter.setActiveIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Tweets",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notifications",
          ),
        ],
      ),
    );
  }
}
