import 'package:flutter/widgets.dart';
import 'package:qiita_app/model/article_model.dart';
import 'package:qiita_app/repository/article_repository_impl.dart';

class ArticleListViewModel with ChangeNotifier {
  final repository = ArticleRepositoryImpl();
  late List<ArticleModel> articles;

  ArticleListViewModel() {
    articles = [];
    fetchArticles();
  }
  // Qiita記事の取得
  Future<void> fetchArticles() async {
    try {
      await repository.fetchArticles().then(
        (result) {
          result.when(
            success: (articles) {
              this.articles = articles;
              notifyListeners();
            },
            failure: (error) {
              print(error.message);
            },
          );
        },
      );
    } on Exception catch (e) {
    } finally {}
  }
}
