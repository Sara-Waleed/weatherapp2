import 'package:flutter/material.dart';
import 'package:weatherapp2/cubit/gat_weather_cubit.dart';
import 'package:weatherapp2/view/Home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() {
  runApp(  MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>GetWeatherCubit(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );

    



  }
}
