import 'package:flutter/material.dart';
import 'package:qiita_app/ui/article_list_view.dart';

void main() {
  runApp(
    const QiitaApp(),
  );
}

class QiitaApp extends StatelessWidget {
  const QiitaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Qiita Articles',
      theme: ThemeData(
        primaryColor: const Color(0xff59bb0c),
      ),
      home: ArticleListView(),
    );
  }
}
