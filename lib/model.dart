class weatherr{
  String?cityname;
  double?temp;
  double?wind;
  int?humidity;
  double?feels_like;
  int? pressure;

weatherr({this.cityname,
this.temp,
this.wind,
this.humidity,
this.pressure,
this.feels_like}




);
weatherr.FromJason(Map<String ,dynamic>json){
  cityname=json["name"];
  temp=json["main"]["temp"];
  wind=json["wind"]["wind"];
  humidity=json["main"]["humidity"];
  pressure=json["main"]["pressure"];
  feels_like=json["main"]["feels_like"];
}


}