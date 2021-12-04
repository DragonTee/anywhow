import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  final int chatId;
  const ChatView({Key? key, @PathParam() required this.chatId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Icon(Icons.feed_outlined),
    );
  }
}
