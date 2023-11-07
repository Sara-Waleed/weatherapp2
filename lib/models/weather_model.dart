
class weatherModel{

  final String CityName;
  final DateTime date;
  final String? image;
  final double Maxtemp;
  final double Mintemp;
  final String weatherConditon;
  final double temp;


  weatherModel( {this.image,
    required this.temp,
     required this.date,required this.CityName,
     required this.Maxtemp,required this.Mintemp,
     required this.weatherConditon});

  factory weatherModel.fromJson(json){
    return weatherModel(
      temp: json["forecast"]["forecastday"][0]["day"]["avgtemp_c"],
        date:DateTime.parse(json["current"]["last_updated"] ),
        CityName: json["location"]['name'],
        Maxtemp:json["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
        Mintemp: json["forecast"]["forecastday"][0]["day"]["mintemp_c"],
        weatherConditon:json["forecast"]["forecastday"][0]["day"]["condition"]["text"],
       image: json["forecast"]["forecastday"][0]["day"]["condition"]["icon"],
    );

  }


}
