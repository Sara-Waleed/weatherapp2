

import '../models/weather_model.dart';

class WeatherState{}
class InitialState extends WeatherState{}
class WeatherLoadedState extends WeatherState {
  final weatherModel weathermodel;
  WeatherLoadedState(this.weathermodel);
}
class WeatherFailureState extends WeatherState{}

