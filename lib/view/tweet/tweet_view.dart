import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_route_example/routes/router.gr.dart';

class TweetView extends StatelessWidget {
  const TweetView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text("Tweet $index"),
          onTap: () => context.router.push(TweetDetailRoute(tweetId: "$index")),
        );
      },
    );
  }
}
