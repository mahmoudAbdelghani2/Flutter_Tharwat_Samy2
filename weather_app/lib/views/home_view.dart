import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/weather_cubit.dart';
import 'package:weather_app/cubit/weather_states.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widgets/no_weather_body.dart';
import 'package:weather_app/widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SearchScreen()));
            },
            icon: const Icon(
              Icons.search,
              size: 25,
            ),
          ),
        ],
      ),
      body:
          BlocBuilder<WeatherCubit, WeatherStates>(builder: ((context, state) {
        if (state is WeatherLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is WeatherInitialState) {
          return const NoWeatherBody();
        } else if (state is WeatherSuccessState) {
          return WeatherInfoBody(weatherModel: state.weatherModel);
        } else {
          return const Text("There is an error !!!");
        }
      })),
    );
  }
}
