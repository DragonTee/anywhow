part of 'remote_articles_bloc.dart';

abstract class RemoteArticlesState extends Equatable {
  final List<Article> articles;

  const RemoteArticlesState({this.articles = const []});

  @override
  List<Object> get props => [articles];
}

class RemoteArticlesLoading extends RemoteArticlesState {
  const RemoteArticlesLoading();
}

class RemoteArticlesDone extends RemoteArticlesState {
  const RemoteArticlesDone(List<Article> articles) : super(articles: articles);
}
