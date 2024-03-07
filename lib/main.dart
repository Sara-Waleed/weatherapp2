import 'package:flutter/material.dart';
import 'package:weatherapp2/Features/presentation/View/Screens/Home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Features/Data/cubit/gat_weather_cubit.dart';
import 'Features/Data/cubit/get_weather_cubit_state.dart';
import 'constant/getWeatherColor.dart';



void main() {
  runApp(  MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(
        builder: (context) =>
            BlocBuilder<GetWeatherCubit, WeatherState>(
              builder: (context, state) {
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(
                    primarySwatch: getWeatherColor(GetWeatherCubit().weather.weatherConditon),
                  ),

                  home: Home(),
                );
              },
            ),
      ),
    );
  }
  }









