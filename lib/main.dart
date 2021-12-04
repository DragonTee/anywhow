import 'package:anywhow/src/config/routes/router.gr.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _autoRouter = AppRouter();
    return MaterialApp.router(
      title: 'AppTitle',
      routeInformationParser: _autoRouter.defaultRouteParser(),
      routerDelegate: _autoRouter.delegate(),
    );
  }
}
