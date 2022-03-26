// import 'package:flutter/material.dart';
// import 'package:qiita_app/model/article_model.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class ArticleDetailWebView extends StatelessWidget {
//   final ArticleModel article;

//   ArticleDetailWebView({Key? key, required this.article}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           leading: BackButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//           title: Text(article.title),
//         ),
//         body: Center(
//           child: WebView(
//               initialUrl: article.url,
//               javascriptMode: JavascriptMode.unrestricted),
//         ),
//       ),
//     );
//   }
// }
