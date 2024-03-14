import 'dart:convert';

import 'package:flutter_application_4/model.dart';
import 'package:http/http.dart'as http;



class weatherApiclient{
  Future<weatherr>?getcuurentlocation(String? location) async{
    var endpoint=Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=$location&appid=f8b5150d92008634f5ecf4d0ce77aee6&units=metrics");
    var response=await http.get(endpoint);
    var Body=jsonDecode(response.body);
    print(weatherr.FromJason(Body).cityname);
    return weatherr.FromJason(Body);

  }

}