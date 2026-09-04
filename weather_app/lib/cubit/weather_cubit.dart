import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/weather_states.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_services.dart';

class WeatherCubit extends Cubit<WeatherStates> {
  WeatherCubit() : super(WeatherInitialState());
  WeatherModel? weatherModel;
  Future<void> getCurrentWeather({required String cityName}) async {
    emit(WeatherLoadingState());
    try {
      weatherModel = await WeatherServices(dio: Dio())
          .getCurrentWeather(cityName: cityName);
      emit(WeatherSuccessState(weatherModel: weatherModel!));
    } catch (e) {
      emit(WeatherErrorState(e.toString()));
    }
  }
}
