import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/consts/api_consts.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherServices {
  final Dio dio;

  WeatherServices({required this.dio}) {
    dio.options.baseUrl = ApiConsts.baseUrl;
    dio.options.queryParameters.addAll({
      'key': ApiConsts.apiKey,
    });
  }

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      var res = await dio.get(
        ApiConsts.endPoint,
        queryParameters: {
          'q': cityName,
        },
      );
      Future.delayed(const Duration(seconds: 5));
      Map<String, dynamic> rawData =
          res.data is String ? jsonDecode(res.data) : res.data;

      WeatherModel weatherModel = WeatherModel.fromJson(rawData);

      log(weatherModel.toString());
      return weatherModel;
    } on DioException catch (e) {
      final errorMessage = e.response?.data['error']['message'] ?? e.message;
      log('Error: $errorMessage');
      return Future.error(errorMessage);
    }
  }
}
