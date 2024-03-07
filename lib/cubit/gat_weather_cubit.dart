
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp2/cubit/get_weather_cubit_state.dart';

import '../core/models/weather_model.dart';
import '../core/services/weather_service.dart';

class GetWeatherCubit extends Cubit< WeatherState> {
  GetWeatherCubit(): super(InitialState());
  late weatherModel weather ;
    getWeather({required String cityname})async{
      try {
         weather = await weatherService(Dio()).getCurrentWeather(city: cityname);
        emit(WeatherLoadedState(weather));

      } catch (e) {
        emit(WeatherFailureState());
      }

    }

}