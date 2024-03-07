
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Data/cubit/gat_weather_cubit.dart';
class searchView extends StatelessWidget {
  const searchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search City"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: TextField(
                onSubmitted: (value)async{
               var getWeatherCubit= BlocProvider.of<GetWeatherCubit>(context);
               getWeatherCubit.getWeather(cityname: value);
               Navigator.pop(context);
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  label: Text("search"),
                  hintText:"Enter City Name",
                  hintStyle: TextStyle(color: Colors.grey),
                  suffixIcon: Icon(Icons.search),
                  suffixIconColor: Colors.blue,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    borderSide: BorderSide(
                      color: Colors.green,
                    )

                  )
                ),
              ),
            ),
          ),

        ],


      ),
 );
  }
}
