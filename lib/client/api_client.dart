import 'package:dio/dio.dart';
import 'package:qiita_app/model/article_model.dart';
import 'package:retrofit/http.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "https://qiita.com/api/v2")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("/items")
  Future<List<ArticleModel>> fetchArticles();
}
