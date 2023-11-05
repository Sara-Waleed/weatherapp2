
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp2/cubit/gat_weather_cubit.dart';

class NoWeaterData extends StatelessWidget {
  const NoWeaterData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Text("There is no weather , start searching now:",style: TextStyle(
            fontWeight: FontWeight.bold,
          ),),
        ),
      ],
    );
  }
}


//********************

class WeatherData extends StatelessWidget {
   WeatherData({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var weathermodel =BlocProvider.of<GetWeatherCubit>(context).weather;

    return Column(
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
    );
  }
}
