// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/presentation/widgets/newstile_widget.dart';

class NewsListViewWidget extends StatelessWidget {
  final List<ArticleModel> allArticles;

  const NewsListViewWidget({super.key, required this.allArticles});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: allArticles.length,
      itemBuilder: (context, index) {
        return NewsTileWidget(
          articleModel: allArticles[index],
        );
      },
    );
  }
}
