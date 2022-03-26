import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qiita_app/ui/article_list_tile.dart';
import 'package:qiita_app/view_model/article_list_view_model.dart';

class ArticleListView extends StatelessWidget {
  final viewModel = ArticleListViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff59bb0c),
        title: const Text('Qiita Articles'),
      ),
      body: ChangeNotifierProvider(
        create: (context) => viewModel,
        child: Consumer<ArticleListViewModel>(
          builder: (context, viewModel, _) {
            return RefreshIndicator(
              child: _buildListView(viewModel),
              onRefresh: () => viewModel.fetchArticles(),
            );
          },
        ),
      ),
    );
  }

  Widget _buildListView(ArticleListViewModel viewModel) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemBuilder: (context, index) {
        return ArticleListTile(article: viewModel.articles[index]);
      },
      separatorBuilder: (context, index) => const Divider(),
      itemCount: viewModel.articles.length,
    );
  }
}
