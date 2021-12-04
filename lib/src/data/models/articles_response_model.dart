import 'package:anywhow/src/domain/entities/article.dart';

import 'article_model.dart';

class ArticlesResponseModel {
  final List<ArticleModel> articles;

  ArticlesResponseModel({
    this.articles = const [],
  });

  factory ArticlesResponseModel.fromJsonList(List<Map<String, dynamic>> list) {
    return ArticlesResponseModel(
      articles: list
          .map(
            (e) => ArticleModel.fromJson(e),
          )
          .toList(),
    );
  }

  factory ArticlesResponseModel.fromJson(Map<String, dynamic> json) {
    return ArticlesResponseModel(
      articles: List<ArticleModel>.from(json['articles'] as List<dynamic>)
          .map(
            (e) => ArticleModel.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );
  }
}
