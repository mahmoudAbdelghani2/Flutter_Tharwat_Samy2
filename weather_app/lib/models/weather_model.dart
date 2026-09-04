class WeatherModel {
  final String cityName;
  final String country;
  final String currentTimeWithHourAndMinute;
  final String date;
  final String lastUpdated;
  final num tempC;
  final String condition;
  final String conditionIcon;
  final num maxtempC;
  final num mintempC;
  final num avgtempC;

  WeatherModel({
    required this.cityName,
    required this.country,
    required this.currentTimeWithHourAndMinute,
    required this.lastUpdated,
    required this.tempC,
    required this.condition,
    required this.conditionIcon,
    required this.maxtempC,
    required this.mintempC,
    required this.date,
    required this.avgtempC,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> jsonData) {
    return WeatherModel(
      cityName: jsonData['location']['name'],
      country: jsonData['location']['country'],
      currentTimeWithHourAndMinute: jsonData['location']['localtime'],
      lastUpdated: jsonData['current']['last_updated'],
      tempC: jsonData['current']['temp_c'],
      condition: jsonData['current']['condition']['text'],
      conditionIcon: jsonData['current']['condition']['icon'],
      maxtempC: jsonData['forecast']['forecastday'][0]['day']['maxtemp_c'],
      mintempC: jsonData['forecast']['forecastday'][0]['day']['mintemp_c'],
      date: jsonData['forecast']['forecastday'][0]['date'],
      avgtempC: jsonData['forecast']['forecastday'][0]['day']['avgtemp_c'],
    );
  }
}
//forecast   forecastday    date
//forecast   forecastday    day    maxtemp_c or mintemp_c
