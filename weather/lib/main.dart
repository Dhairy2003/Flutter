import 'package:flutter/material.dart';
import 'package:weather/additional_info.dart';
import 'package:weather/api_client.dart';
import 'package:weather/currweather.dart';
import 'package:weather/model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final WeatherApiclient client = WeatherApiclient();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Weather App",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 30,
            color: Colors.black87,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.settings),
          color: Colors.black,
        ),
      ),
      body: FutureBuilder<Weather>(
        future: client.getCurrentweather("Bhopal"),
        builder: (BuildContext context, AsyncSnapshot<Weather> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Text(
                'Error: ${snapshot.error}',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                ),
              ),
            );
          }
          final Weather? data = snapshot.data;
          if (data == null) {
            return Container();
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              currWeather(
                Icons.wb_sunny,
                "${data.temp}",
                "${data.cityName}",
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin:  EdgeInsets.all(20),
                height: 40,
                child: Divider(
                  thickness: 4,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Additional Information",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              additionalInofrmation(
                "${data.wind}",
                "${data.humidity}",
                "${data.pressure}",
                "${data.feels_like}",
              ),
            ],
          );
        },
      ),
    );
  }
}
