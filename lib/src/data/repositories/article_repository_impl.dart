import 'package:anywhow/src/data/datasources/remote/articles_mongo_service.dart';

import '../../core/params/article_request.dart';
import '../../core/resources/data_state.dart';
import '../../domain/entities/article.dart';
import '../../domain/repositories/articles_repository.dart';

class ArticlesRepositoryImpl implements ArticleRepository {
  final ArticleMongoService _articlesService;

  const ArticlesRepositoryImpl(this._articlesService);

  @override
  Future<DataState<List<Article>>> getAticles(
      ArticleRequestParams params) async {
    var articlesResponse = await _articlesService.getArticles(
      page: params.page,
      pageSize: params.pageSize,
    );
    if (articlesResponse.data == null) {
      return DataFailed(articlesResponse.error);
    }
    return DataSuccess(articlesResponse.data?.articles as List<Article>);
  }
}
