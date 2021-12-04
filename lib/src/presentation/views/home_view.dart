import 'package:anywhow/src/config/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (_, tabsRouter) => AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('Bottom Nav'),
        centerTitle: true,
        leading: const AutoBackButton(),
      ),
      backgroundColor: Colors.indigo,
      routes: const [
        MessagesRouter(),
        PostsRouter(),
        AccountRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) => SalomonBottomBar(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            SalomonBottomBarItem(
              selectedColor: Colors.amberAccent,
              icon: const Icon(Icons.messenger_outline),
              title: const Text('Messenger'),
            ),
            SalomonBottomBarItem(
              selectedColor: Colors.amberAccent,
              icon: const Icon(Icons.feed_outlined),
              title: const Text('Feed'),
            ),
            SalomonBottomBarItem(
              selectedColor: Colors.amberAccent,
              icon: const Icon(Icons.account_box_rounded),
              title: const Text('Account'),
            ),
          ]),
    );
  }
}
