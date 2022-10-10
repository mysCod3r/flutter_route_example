import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_route_example/routes/router.gr.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 8,
        itemBuilder: ((context, index) => ListTile(
              leading: const Icon(Icons.person),
              title: Text("User $index"),
              onTap: () =>
                  context.router.push(ProfileDetailRoute(userId: "$index")),
            )));
  }
}


// context.navigateTo(TweetRouter(children: [TweetDetailRoute(tweetId: $index])))