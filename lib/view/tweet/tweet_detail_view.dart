import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

class TweetDetailView extends StatelessWidget {
  const TweetDetailView({super.key, @PathParam() required this.tweetId});

  final String tweetId;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListTile(
        leading: const Icon(Icons.twelve_mp_outlined),
        title: Text(tweetId),
      ),
    );
  }
}
