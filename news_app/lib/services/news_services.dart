import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:news_app_ui_setup/consts/api_consts.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

class NewsServices {
  Dio dio;
  NewsServices(this.dio) {
    _initDio();
  }
  void _initDio() {
    dio.options.baseUrl = ApiConsts.baseUrl;
    dio.options.queryParameters = {
      'apiKey': ApiConsts.apiKey,
    };
    dio.interceptors.add(
      LogInterceptor(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        request: true,
      ),
    );
  }

  Future<List<ArticleModel>> getNews(
      {required String country, required String category}) async {
    try {
      //https://newsapi.org/v2/top-headlines?country=us&apiKey=2098e4ed2c54468eb54edf4b972d27e6
      var res = await dio.get(ApiConsts.topHeadlines, queryParameters: {
        'country': country,
        'category': category,
      });

      List<dynamic> articles = res.data['articles'];
      List<ArticleModel> allArticles = [];

      for (var article in articles) {
        allArticles.add(ArticleModel.fromJson(article));
      }
      return allArticles;
    } catch (e) {
      if (kDebugMode) print(e.toString());
      return [];
    }
  }
}
