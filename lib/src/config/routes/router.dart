import 'package:anywhow/src/presentation/views/account_view.dart';
import 'package:anywhow/src/presentation/views/chat_view.dart';
import 'package:anywhow/src/presentation/views/feed_view.dart';
import 'package:anywhow/src/presentation/views/home_view.dart';
import 'package:anywhow/src/presentation/views/messenger_view.dart';
import 'package:anywhow/src/presentation/views/single_post_view.dart';
import 'package:auto_route/auto_route.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      path: '/',
      page: HomeView,
      children: [
        AutoRoute(
          path: 'messages',
          name: 'MessagesRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: MessengerView,
            ),
            AutoRoute(
              path: ':chatId',
              page: ChatView,
            ),
          ],
        ),
        AutoRoute(
          path: 'posts',
          name: 'PostsRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: FeedView,
            ),
            AutoRoute(
              path: ':postId',
              page: SinglePostView,
            ),
          ],
        ),
        AutoRoute(
          path: 'account',
          name: 'AccountRouter',
          page: AccountView,
        ),
      ],
    ),
  ],
)
class $AppRouter {}
