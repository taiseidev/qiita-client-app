import 'package:flutter/material.dart';
import 'package:qiita_app/model/article_model.dart';
import 'package:qiita_app/ui/article_webview.dart';
import 'package:url_launcher/url_launcher.dart';

class ArticleListTile extends StatelessWidget {
  ArticleListTile({required this.article});

  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipOval(
        child: Image.network(article.user.profileImageUrl,
            width: 44,
            height: 44, errorBuilder: (context, exception, stacktrace) {
          return Text('Q');
        }),
      ),
      title: Text(article.title),
      onTap: () => launch(article.url),
    );
  }
}
