import 'package:flutter/material.dart';

class AppConsts {
  static MaterialColor getWeatherThemeColor(String? condition) {
    if (condition == null) return Colors.blue;

    final text = condition.toLowerCase();

    if (text.contains('sunny') || text.contains('clear')) {
      return Colors.orange; // or Colors.yellow
    }

    if (text.contains('thunder')) {
      return Colors.deepPurple;
    }

    if (text.contains('snow') ||
        text.contains('blizzard') ||
        text.contains('sleet') ||
        text.contains('ice') ||
        text.contains('freezing')) {
      return Colors.cyan;
    }

    if (text.contains('rain') ||
        text.contains('drizzle') ||
        text.contains('shower')) {
      return Colors.blue;
    }

    if (text.contains('dust') ||
        text.contains('sand') ||
        text.contains('haze') ||
        text.contains('smog') ||
        text.contains('smoke')) {
      return Colors.brown;
    }

    if (text.contains('fog') || text.contains('mist')) {
      return Colors.grey;
    }

    if (text.contains('cloudy') || text.contains('overcast')) {
      return Colors.blueGrey;
    }

    return Colors.blue;
  }
}
