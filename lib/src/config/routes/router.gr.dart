// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i8;

import '../../presentation/views/account_view.dart' as _i3;
import '../../presentation/views/chat_view.dart' as _i5;
import '../../presentation/views/feed_view.dart' as _i6;
import '../../presentation/views/home_view.dart' as _i1;
import '../../presentation/views/messenger_view.dart' as _i4;
import '../../presentation/views/single_post_view.dart' as _i7;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeView.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeView());
    },
    MessagesRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    PostsRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    AccountRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.AccountView());
    },
    MessengerView.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.MessengerView());
    },
    ChatView.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ChatViewArgs>(
          orElse: () => ChatViewArgs(chatId: pathParams.getInt('chatId')));
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.ChatView(key: args.key, chatId: args.chatId));
    },
    FeedView.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.FeedView());
    },
    SinglePostView.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<SinglePostViewArgs>(
          orElse: () =>
              SinglePostViewArgs(postId: pathParams.getInt('postId')));
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.SinglePostView(key: args.key, postId: args.postId));
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(HomeView.name, path: '/', children: [
          _i2.RouteConfig(MessagesRouter.name,
              path: 'messages',
              parent: HomeView.name,
              children: [
                _i2.RouteConfig(MessengerView.name,
                    path: '', parent: MessagesRouter.name),
                _i2.RouteConfig(ChatView.name,
                    path: ':chatId', parent: MessagesRouter.name)
              ]),
          _i2.RouteConfig(PostsRouter.name,
              path: 'posts',
              parent: HomeView.name,
              children: [
                _i2.RouteConfig(FeedView.name,
                    path: '', parent: PostsRouter.name),
                _i2.RouteConfig(SinglePostView.name,
                    path: ':postId', parent: PostsRouter.name)
              ]),
          _i2.RouteConfig(AccountRouter.name,
              path: 'account', parent: HomeView.name)
        ])
      ];
}

/// generated route for [_i1.HomeView]
class HomeView extends _i2.PageRouteInfo<void> {
  const HomeView({List<_i2.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'HomeView';
}

/// generated route for [_i2.EmptyRouterPage]
class MessagesRouter extends _i2.PageRouteInfo<void> {
  const MessagesRouter({List<_i2.PageRouteInfo>? children})
      : super(name, path: 'messages', initialChildren: children);

  static const String name = 'MessagesRouter';
}

/// generated route for [_i2.EmptyRouterPage]
class PostsRouter extends _i2.PageRouteInfo<void> {
  const PostsRouter({List<_i2.PageRouteInfo>? children})
      : super(name, path: 'posts', initialChildren: children);

  static const String name = 'PostsRouter';
}

/// generated route for [_i3.AccountView]
class AccountRouter extends _i2.PageRouteInfo<void> {
  const AccountRouter() : super(name, path: 'account');

  static const String name = 'AccountRouter';
}

/// generated route for [_i4.MessengerView]
class MessengerView extends _i2.PageRouteInfo<void> {
  const MessengerView() : super(name, path: '');

  static const String name = 'MessengerView';
}

/// generated route for [_i5.ChatView]
class ChatView extends _i2.PageRouteInfo<ChatViewArgs> {
  ChatView({_i8.Key? key, required int chatId})
      : super(name,
            path: ':chatId',
            args: ChatViewArgs(key: key, chatId: chatId),
            rawPathParams: {'chatId': chatId});

  static const String name = 'ChatView';
}

class ChatViewArgs {
  const ChatViewArgs({this.key, required this.chatId});

  final _i8.Key? key;

  final int chatId;

  @override
  String toString() {
    return 'ChatViewArgs{key: $key, chatId: $chatId}';
  }
}

/// generated route for [_i6.FeedView]
class FeedView extends _i2.PageRouteInfo<void> {
  const FeedView() : super(name, path: '');

  static const String name = 'FeedView';
}

/// generated route for [_i7.SinglePostView]
class SinglePostView extends _i2.PageRouteInfo<SinglePostViewArgs> {
  SinglePostView({_i8.Key? key, required int postId})
      : super(name,
            path: ':postId',
            args: SinglePostViewArgs(key: key, postId: postId),
            rawPathParams: {'postId': postId});

  static const String name = 'SinglePostView';
}

class SinglePostViewArgs {
  const SinglePostViewArgs({this.key, required this.postId});

  final _i8.Key? key;

  final int postId;

  @override
  String toString() {
    return 'SinglePostViewArgs{key: $key, postId: $postId}';
  }
}
