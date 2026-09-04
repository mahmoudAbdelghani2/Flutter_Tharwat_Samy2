import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/consts/app_consts.dart';
import 'package:weather_app/cubit/weather_cubit.dart';
import 'package:weather_app/cubit/weather_states.dart';
import 'package:weather_app/views/home_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherCubit(),
      child: Builder(builder: (context) {
        return BlocBuilder<WeatherCubit, WeatherStates>(
          builder: (context, state) {
            final themeColor = AppConsts.getWeatherThemeColor(
              BlocProvider.of<WeatherCubit>(context).weatherModel?.condition,
            );
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Weather App',
              theme: ThemeData(
                appBarTheme: AppBarTheme(
                  backgroundColor: themeColor,
                  elevation: 2,
                ),
                scaffoldBackgroundColor: themeColor,
                primarySwatch: themeColor,
              ),
              home: const HomeView(),
            );
          },
        );
      }),
    );
  }
}
