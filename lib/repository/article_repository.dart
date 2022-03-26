import 'package:qiita_app/response/result.dart';
import 'package:qiita_app/model/article_model.dart';

// 抽象クラス。実装を強制するメソッドを記述
abstract class ArticleRepository {
  Future<Result<List<ArticleModel>>> fetchArticles();
}
