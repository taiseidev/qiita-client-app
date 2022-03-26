import 'package:qiita_app/response/result.dart';
import 'package:qiita_app/model/article_model.dart';

abstract class ArticleRepository {
  Future<Result<List<ArticleModel>>> fetchArticles();
}
