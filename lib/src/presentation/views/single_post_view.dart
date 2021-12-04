import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

class SinglePostView extends StatelessWidget {
  final int postId;
  const SinglePostView({Key? key, @PathParam() required this.postId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Post #$postId'),
    );
  }
}
