import 'package:anywhow/src/core/params/article_request.dart';
import 'package:anywhow/src/domain/repositories/articles_repository.dart';

import '../../core/resources/data_state.dart';
import '../../core/usecases/usecase.dart';
import '../entities/article.dart';

class GetArticlesUsecase
    implements UseCase<DataState<List<Article>>, ArticleRequestParams> {
  final ArticleRepository _articleRepository;

  GetArticlesUsecase(this._articleRepository);

  @override
  Future<DataState<List<Article>>> call(
      {ArticleRequestParams params = const ArticleRequestParams()}) {
    return _articleRepository.getAticles(params);
  }
}
