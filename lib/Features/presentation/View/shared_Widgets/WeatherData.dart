import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../constant/getWeatherColor.dart';
import '../../../../core/models/weather_model.dart';
import '../../../../cubit/gat_weather_cubit.dart';




class WeatherData extends StatelessWidget {
  WeatherData({Key? key, required this.weather}) : super(key: key);
  final weatherModel weather;
  Widget build(BuildContext context) {
    var weathermodel =BlocProvider.of<GetWeatherCubit>(context).weather;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              getWeatherColor(weathermodel.weatherConditon),
              getWeatherColor(weathermodel.weatherConditon)[300]!,
              getWeatherColor(weathermodel.weatherConditon)[50]!,


            ]
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(weathermodel.CityName),
          SizedBox(height: 10,),
          Text("updated at: ${weathermodel.date.hour}:${weathermodel.date.minute}"),
          SizedBox(height: 10,),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.network("https:${weathermodel.image!}"),
              Text("${weathermodel.temp.toString()}"),
              Column(
                children: [
                  Text("Max: ${weathermodel.Maxtemp.round()}"),
                  SizedBox(height: 10,),
                  Text("Min: ${weathermodel.Mintemp.round()}"),

                ],
              )
            ],
          ),
          SizedBox(height: 10,),
          Center(child: Text("${weathermodel.weatherConditon}")),



        ],
      ),
    );
  }
}