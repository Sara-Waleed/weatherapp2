
import 'dart:developer';
import 'package:dio/dio.dart';

import '../models/weather_model.dart';

class weatherService{
  Dio dio=Dio();
  weatherService(this.dio);
  final String baseUrl="http://api.weatherapi.com/v1";
  final String ApiKay="ac8950702d434420b5f85525233110%20";

  Future<weatherModel> getCurrentWeather({ required city}) async{
  try {
    Response respone =  await dio.get("$baseUrl/forecast.json?key=$ApiKay&q=$city&days=10");
    weatherModel weatherData= weatherModel.fromJson(respone.data);
    return weatherData;
  } on DioException catch (e) {
   final String errorMessage= e.response?.data["error"]["message"] ?? "oops there was null return ";
   throw Exception(errorMessage);
  } catch(e){
    log(e.toString());
    throw Exception("oops! there is an error");
  }
}

}