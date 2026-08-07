// ignore_for_file: prefer_typing_uninitialized_variables, use_key_in_widget_constructors

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/presentation/widgets/news_listView_widget.dart';
import 'package:news_app_ui_setup/services/news_services.dart';

class NewsListViewBuilderWidget extends StatefulWidget {
  final String category;

  const NewsListViewBuilderWidget({super.key, required this.category});
  @override
  State<NewsListViewBuilderWidget> createState() =>
      _NewsListViewBuilderWidgetState();
}

class _NewsListViewBuilderWidgetState extends State<NewsListViewBuilderWidget> {
  late var allArticles;
  @override
  void initState() {
    super.initState();
    allArticles =
        NewsServices(Dio()).getNews(country: 'us', category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: allArticles,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return const Center(
            child: Text(
              "Opps ..! There is an error",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        } else {
          return NewsListViewWidget(allArticles: snapshot.data ?? []);
        }
      },
    );
  }
}
 // return isLoading
    //     ? const CircularProgressIndicator()
    //     : allArticles.isNotEmpty
    //         ? NewsListViewWidget(allArticles: allArticles)
    //         : const Center(
    //             child: Text(
    //               "Opps ..! There is an error",
    //               style: TextStyle(
    //                 color: Colors.black,
    //                 fontSize: 30,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //           );