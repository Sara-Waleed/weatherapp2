
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp2/cubit/gat_weather_cubit.dart';
import 'package:weatherapp2/cubit/get_weather_cubit_state.dart';
import 'package:weatherapp2/shared/shared_components.dart';
import 'package:weatherapp2/view/searchView.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(
      actions: [
        IconButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return searchView();
          },
          ),
          );

        }, icon:Icon(Icons.search)),
      ],
      title: Text("Weather App"),
      backgroundColor: Colors.blue,

    ),

    body: BlocBuilder<GetWeatherCubit,WeatherState>(
      builder:(context, state) {
        if( state is InitialState){
          return NoWeaterData();
        }
        else if(state is WeatherLoadedState){
          return WeatherData();
        }
        else{
          return Text("oops! there is an error");
        }
      },

    ),


    );
  }
}
