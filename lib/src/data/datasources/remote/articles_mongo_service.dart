import '../../../core/resources/data_state.dart';
import '../../models/articles_response_model.dart';
import 'package:mongo_dart/mongo_dart.dart';

class ArticleMongoService {
  Future<DataState<ArticlesResponseModel>> getArticles({
    int page = 1,
    int pageSize = 10,
  }) async {
    var db = Db(
        "mongodb+srv://user:osja6IE2wJSqRfBd@cluster0.sa7ph.mongodb.net/AnywhowDB?retryWrites=true&w=majority");
    await db.open();
    var col = db.collection("Articles");
    var articles = await col.find().toList();
    if (articles.isEmpty) return const DataFailed("No Data");
    await db.close();
    return DataSuccess(ArticlesResponseModel.fromJsonList(articles));
  }
}
