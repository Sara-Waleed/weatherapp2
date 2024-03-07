import 'package:flutter/material.dart';

MaterialColor getWeatherColor(String? condition) {
  if(condition == null){
    return Colors.blue;
  }
  switch (condition) {
    case "Sunny":
    case "Clear":
      return Colors.orange;
    case "Partly cloudy":
      return Colors.blueGrey;
    case "Cloudy":
    case "Overcast":
      return Colors.grey;
    case "Mist":
    case "Fog":
    case "Freezing fog":
      return Colors.lightBlue;
    case "Patchy rain possible":
    case "Patchy light drizzle":
    case "Light drizzle":
    case "Patchy light rain":
    case "Light rain":
    case "Light rain shower":
    case "Patchy light rain with thunder":
      return Colors.blue;
    case "Moderate rain at times":
    case "Moderate rain":
    case "Moderate rain at times":
    case "Moderate rain shower":
    case "Moderate or heavy rain":
    case "Moderate or heavy rain shower":
    case "Moderate or heavy rain with thunder":
      return Colors.indigo;
    case "Heavy rain at times":
    case "Heavy rain":
    case "Torrential rain shower":
    case "Torrential rain shower":
      return Colors.deepPurple;
    case "Patchy snow possible":
    case "Patchy sleet possible":
    case "Patchy freezing drizzle possible":
    case "Patchy light snow":
    case "Light snow":
    case "Light snow showers":
    case "Patchy light snow with thunder":
    case "Moderate or heavy snow":
    case "Moderate or heavy snow showers":
    case "Moderate or heavy snow with thunder":
      return Colors.lightBlue;
    case "Patchy heavy snow":
    case "Heavy snow":
      return Colors.indigo;
    case "Blowing snow":
      return Colors.cyan;
    case "Blizzard":
      return Colors.cyan;
    case "Patchy freezing rain":
    case "Moderate or heavy freezing rain":
      return Colors.teal;
    case "Light sleet":
    case "Moderate or heavy sleet":
    case "Light sleet showers":
    case "Moderate or heavy sleet showers":
      return Colors.green;
    case "Ice pellets":
    case "Light showers of ice pellets":
    case "Moderate or heavy showers of ice pellets":
      return Colors.lime;
    case "Thundery outbreaks possible":
    case "Patchy light rain with thunder":
    case "Moderate or heavy rain with thunder":
    case "Patchy light snow with thunder":
    case "Moderate or heavy snow with thunder":
      return Colors.amber;
    default:
      return Colors.blue;
  }
}