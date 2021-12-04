import '../../domain/entities/article.dart';

class ArticleModel extends Article {
  const ArticleModel({
    required int id,
    String title = 'Title',
    String body = 'Body',
    String imageURL = 'https://picsum.photos/200/200',
    String authorImageURL = 'https://picsum.photos/200/200',
    String authorName = 'Author',
  }) : super(
            id: id,
            title: title,
            body: body,
            imageURL: imageURL,
            authorImageURL: authorImageURL,
            authorName: authorName);
  factory ArticleModel.fromJson(Map<String, dynamic> map) {
    return ArticleModel(
      id: map['id'] as int,
      title: map['title'] as String,
      body: map['body'] as String,
      imageURL: map['imageURL'] as String,
      authorImageURL: map['authorImageURL'] as String,
      authorName: map['authorName'] as String,
    );
  }
}
