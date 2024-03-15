import 'package:flutter/material.dart';
import 'package:flutter_application_4/additionalinfo.dart';
import 'package:flutter_application_4/customwidget.dart';
import 'package:flutter_application_4/model.dart';
import 'package:flutter_application_4/services/weather_apia_services.dart';
import 'package:http/http.dart ' as http;

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homescreen(),
    );
  }
}

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  weatherApiclient client = weatherApiclient();

  weatherr? data;
  Future<void> getdata() async {
    data = await client.getcuurentlocation("Kochi");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    client.getcuurentlocation("Kochi");
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFB2DFDB),
        appBar: AppBar(
          backgroundColor: Color(0xFFB2DFDB),
          centerTitle: true,
          title: Text(
            "Weather App",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          leading: Icon(Icons.menu),
        ),
        body: FutureBuilder(
          future: getdata(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(
                children: [
                  Container(
                    width: 350,
                    height: 300,
                    child: Card(
                      color: Colors.transparent,
                      child: Center(
                          child: customwidget(Icons.wb_sunny_rounded,
                              "${data!.temp}", "${data!.cityname}")),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  additionalinfo("${data!.temp}", "${data!.humidity}",
                      "${data!.pressure}", "${data!.feels_like}")
                ],
              );
            }
            return Container();
          },
        ));
  }
}
