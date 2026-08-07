import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/consts/utils.dart';
import 'package:news_app_ui_setup/presentation/widgets/categoryListView.dart';
import 'package:news_app_ui_setup/presentation/widgets/news_listView_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'News',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: 'Cloud',
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return const SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    CategoriesListViweWidget(),
                    SizedBox(height: 12),
                    NewsListViewBuilderWidget(
                      category: 'general',
                    ),
                  ],
                ),
              );
            },
          ),
        ));
  }
}
