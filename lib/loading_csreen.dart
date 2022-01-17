import 'dart:convert';
import 'networking.dart';
import 'package:flutter/material.dart';
import 'location.dart';
import 'package:http/http.dart' as http;
import 'location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

const apikey = '61b0f9f822e90113dfbd2fe1615e64bc';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double longitude;
  double latitude;

  void getLocationData() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
  }

  void getData()async {
    Response response=await get("api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid={API key}
    ");
  }
  //
  //   Networking networking = Networking(
  //       'api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apikey');
  //   var weatherData = await networking.getData();
  //   Navigator.push(context, MaterialPageRoute(builder: (context) {
  //     return LocationScreen();
  //   }));
  // }

  @override
  void initState() {
    getLocationData();
  }

  // double temp = decoededdata['main']['temp'];
  // int condition = decoededdata['weather'][0]['id'];
  // String cityName = decoededdata['name'];
  // print(temp);
  // print(condition);
  // print(cityName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitFadingFour(
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}
