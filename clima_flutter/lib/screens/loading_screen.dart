import '../services/networking.dart';
import 'package:flutter/material.dart';
import '../services/location.dart';
import './location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

const apiKey = '7eb04b92324b4661d2c775e2ae5700e9';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  double latitude;
  double longitude;

  @override
  void initState(){
    super.initState();
    getLocationData;
  }

  void getLocationData() async {
    Location location = Location();
    await location.getCurrentLocation();
    latitude = location.latitude;
    longitude = location.longitude;
    NetworkHelper networkHelper = NetworkHelper(
        'https://samples.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');
    var weatherData = await networkHelper.getData();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen();
    }));
//    var id = jsonDecode(data)['weather'][0]['id'];
//    print(id);
//    var temp = jsonDecode(data)['main']['temp'];
//    print(temp);
//    var name = jsonDecode(data)['name'];
//    print(name);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
            color: Colors.white,
            size: 100.0,
        ),
      ),
    );
  }
}
