import 'package:anywhow/src/domain/entities/article.dart';
import 'package:anywhow/src/domain/usecases/get_articles_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'remote_articles_event.dart';
part 'remote_articles_state.dart';

class RemoteArticlesBloc
    extends Bloc<RemoteArticlesEvent, RemoteArticlesState> {
  final GetArticlesUsecase _getArticlesUsecase;

  RemoteArticlesBloc(this._getArticlesUsecase)
      : super(const RemoteArticlesLoading());

  final List<Article> _articles = [];
  int page = 1;
  static const int _pageSize = 15;

  @override
  Stream<RemoteArticlesState> mapEventToState(
      RemoteArticlesEvent event) async* {
    if (event is GetArticles) yield* ;//TODO
  }

  Stream<RemoteArticlesState> _getArticles(RemoteArticlesEvent event) async* {
    yield* runBlocProcess(() async* {

    });
  }
}
