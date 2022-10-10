import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:flutter_route_example/view/notifications/notifications_view.dart';
import 'package:flutter_route_example/view/profile/profile_detail_view.dart';
import 'package:flutter_route_example/view/profile/profile_view.dart';
import 'package:flutter_route_example/view/settings/settings_view.dart';
import 'package:flutter_route_example/view/tweet/tweet_view.dart';
import 'package:flutter_route_example/view/tweet/tweet_detail_view.dart';

import '../home_view.dart';

@MaterialAutoRouter(
  replaceInRouteName: "View,Route",
  routes: <AutoRoute>[
    AutoRoute(
      path: "/",
      page: HomeView,
      children: [
        AutoRoute(
          path: "tweet",
          name: "TweetRouter",
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: "",
              page: TweetView,
            ),
            AutoRoute(
              path: ":tweetId",
              page: TweetDetailView,
            ),
          ],
        ),
        AutoRoute(
            path: "profile",
            name: "ProfileRouter",
            page: EmptyRouterPage,
            children: [
              AutoRoute(
                path: "",
                page: ProfileView,
              ),
              AutoRoute(
                path: ":userId",
                page: ProfileDetailView,
              ),
              // profile nav bar dan tweetDetail için üsttekinin aynısı eklendi.
              AutoRoute(
                path: ":tweetId",
                page: TweetDetailView,
              ),
            ]),
        AutoRoute(
          path: "notifications",
          name: "NotificationsRouter",
          page: NotificationsView,
        ),
        AutoRoute(
          path: "settings",
          name: "SettingsRouter",
          page: SettingsView,
        ),
      ],
    ),
  ],
)
class $AppRouter {}
