import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final int id;
  final String title;
  final String body;
  final String imageURL;
  final String authorImageURL;
  final String authorName;

  const Article({
    required this.id,
    this.title = "Title",
    this.body = "Body",
    this.imageURL = "https://picsum.photos/200/200",
    this.authorImageURL = "https://picsum.photos/200/200",
    this.authorName = "Author",
  });

  @override
  List<Object> get props =>
      [id, title, body, imageURL, authorImageURL, authorName];

  @override
  bool get stringify => true;
}
