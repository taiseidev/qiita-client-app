import 'package:dio/dio.dart';
import 'package:qiita_app/client/api_client.dart';
import 'package:qiita_app/model/article_model.dart';
import 'package:qiita_app/repository/article_repository.dart';
import 'package:qiita_app/response/result.dart';

class ArticleRepositoryImpl extends ArticleRepository {
  final ApiClient _client;

  ArticleRepositoryImpl([ApiClient? client])
      : _client = client ?? ApiClient(Dio());

  @override
  Future<Result<List<ArticleModel>>> fetchArticles() {
    return _client
        .fetchArticles()
        .then((articles) => Result<List<ArticleModel>>.success(articles))
        .catchError((error) => Result<List<ArticleModel>>.failure(error));
  }
}
