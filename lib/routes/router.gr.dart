// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i10;

import '../home_view.dart' as _i1;
import '../view/notifications/notifications_view.dart' as _i3;
import '../view/profile/profile_detail_view.dart' as _i8;
import '../view/profile/profile_view.dart' as _i7;
import '../view/settings/settings_view.dart' as _i4;
import '../view/tweet/tweet_detail_view.dart' as _i6;
import '../view/tweet/tweet_view.dart' as _i5;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomeView(),
      );
    },
    TweetRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    ProfileRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    NotificationsRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.NotificationsView(),
      );
    },
    SettingsRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.SettingsView(),
      );
    },
    TweetRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.TweetView(),
      );
    },
    TweetDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<TweetDetailRouteArgs>(
          orElse: () =>
              TweetDetailRouteArgs(tweetId: pathParams.getString('tweetId')));
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.TweetDetailView(
          key: args.key,
          tweetId: args.tweetId,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.ProfileView(),
      );
    },
    ProfileDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProfileDetailRouteArgs>(
          orElse: () =>
              ProfileDetailRouteArgs(userId: pathParams.getString('userId')));
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.ProfileDetailView(
          key: args.key,
          userId: args.userId,
        ),
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          HomeRoute.name,
          path: '/',
          children: [
            _i9.RouteConfig(
              TweetRouter.name,
              path: 'tweet',
              parent: HomeRoute.name,
              children: [
                _i9.RouteConfig(
                  TweetRoute.name,
                  path: '',
                  parent: TweetRouter.name,
                ),
                _i9.RouteConfig(
                  TweetDetailRoute.name,
                  path: ':tweetId',
                  parent: TweetRouter.name,
                ),
              ],
            ),
            _i9.RouteConfig(
              ProfileRouter.name,
              path: 'profile',
              parent: HomeRoute.name,
              children: [
                _i9.RouteConfig(
                  ProfileRoute.name,
                  path: '',
                  parent: ProfileRouter.name,
                ),
                _i9.RouteConfig(
                  ProfileDetailRoute.name,
                  path: ':userId',
                  parent: ProfileRouter.name,
                ),
                _i9.RouteConfig(
                  TweetDetailRoute.name,
                  path: ':tweetId',
                  parent: ProfileRouter.name,
                ),
              ],
            ),
            _i9.RouteConfig(
              NotificationsRouter.name,
              path: 'notifications',
              parent: HomeRoute.name,
            ),
            _i9.RouteConfig(
              SettingsRouter.name,
              path: 'settings',
              parent: HomeRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.HomeView]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class TweetRouter extends _i9.PageRouteInfo<void> {
  const TweetRouter({List<_i9.PageRouteInfo>? children})
      : super(
          TweetRouter.name,
          path: 'tweet',
          initialChildren: children,
        );

  static const String name = 'TweetRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class ProfileRouter extends _i9.PageRouteInfo<void> {
  const ProfileRouter({List<_i9.PageRouteInfo>? children})
      : super(
          ProfileRouter.name,
          path: 'profile',
          initialChildren: children,
        );

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i3.NotificationsView]
class NotificationsRouter extends _i9.PageRouteInfo<void> {
  const NotificationsRouter()
      : super(
          NotificationsRouter.name,
          path: 'notifications',
        );

  static const String name = 'NotificationsRouter';
}

/// generated route for
/// [_i4.SettingsView]
class SettingsRouter extends _i9.PageRouteInfo<void> {
  const SettingsRouter()
      : super(
          SettingsRouter.name,
          path: 'settings',
        );

  static const String name = 'SettingsRouter';
}

/// generated route for
/// [_i5.TweetView]
class TweetRoute extends _i9.PageRouteInfo<void> {
  const TweetRoute()
      : super(
          TweetRoute.name,
          path: '',
        );

  static const String name = 'TweetRoute';
}

/// generated route for
/// [_i6.TweetDetailView]
class TweetDetailRoute extends _i9.PageRouteInfo<TweetDetailRouteArgs> {
  TweetDetailRoute({
    _i10.Key? key,
    required String tweetId,
  }) : super(
          TweetDetailRoute.name,
          path: ':tweetId',
          args: TweetDetailRouteArgs(
            key: key,
            tweetId: tweetId,
          ),
          rawPathParams: {'tweetId': tweetId},
        );

  static const String name = 'TweetDetailRoute';
}

class TweetDetailRouteArgs {
  const TweetDetailRouteArgs({
    this.key,
    required this.tweetId,
  });

  final _i10.Key? key;

  final String tweetId;

  @override
  String toString() {
    return 'TweetDetailRouteArgs{key: $key, tweetId: $tweetId}';
  }
}

/// generated route for
/// [_i7.ProfileView]
class ProfileRoute extends _i9.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i8.ProfileDetailView]
class ProfileDetailRoute extends _i9.PageRouteInfo<ProfileDetailRouteArgs> {
  ProfileDetailRoute({
    _i10.Key? key,
    required String userId,
  }) : super(
          ProfileDetailRoute.name,
          path: ':userId',
          args: ProfileDetailRouteArgs(
            key: key,
            userId: userId,
          ),
          rawPathParams: {'userId': userId},
        );

  static const String name = 'ProfileDetailRoute';
}

class ProfileDetailRouteArgs {
  const ProfileDetailRouteArgs({
    this.key,
    required this.userId,
  });

  final _i10.Key? key;

  final String userId;

  @override
  String toString() {
    return 'ProfileDetailRouteArgs{key: $key, userId: $userId}';
  }
}
