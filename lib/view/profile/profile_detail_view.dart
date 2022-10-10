import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../routes/router.gr.dart';

class ProfileDetailView extends StatelessWidget {
  const ProfileDetailView({super.key, @PathParam() required this.userId});

  final String userId;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(Icons.twelve_mp_outlined),
          title: Text(userId),
        ),
        IconButton(
            onPressed: () {
              context.router.push(TweetDetailRoute(tweetId: "2"));
              // context.navigateTo(
              //     TweetRouter(children: [TweetDetailRoute(tweetId: "4")]));
            },
            icon: const Icon(Icons.home))
      ],
    );
  }
}
