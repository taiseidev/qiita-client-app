import 'package:json_annotation/json_annotation.dart';
import 'package:qiita_app/model/user_model.dart';

part 'article_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ArticleModel {
  String id;
  String title;
  String url;
  UserModel user;

  ArticleModel(
      {required this.id,
      required this.title,
      required this.url,
      required this.user});

  factory ArticleModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleModelFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleModelToJson(this);
}
