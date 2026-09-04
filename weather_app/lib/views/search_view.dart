import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/weather_cubit.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _controller = TextEditingController();
  GlobalKey<State<StatefulWidget>> key = GlobalKey();
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Search City",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Enter any city",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextField(
                  onSubmitted: (value) async {
                    await BlocProvider.of<WeatherCubit>(context)
                        .getCurrentWeather(cityName: value);
                    Navigator.pop(context);
                  },
                  key: key,
                  controller: _controller,
                  decoration: InputDecoration(
                      labelText: 'Search ...',
                      hintText: 'Enter any city you need',
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      suffixIcon: IconButton(
                          onPressed: () async {
                            await BlocProvider.of<WeatherCubit>(context)
                                .getCurrentWeather(cityName: _controller.text);
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.search))),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
