import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather.dart';

final WEATHER_API_KEY = "bcdefa17d9b7477db50225739221805";
final FORECAST_ENDPOINT =
    'http://api.weatherapi.com/v1/forecast.json?key=$WEATHER_API_KEY&q=73008';

Future<Weather> fetchWeatherData() async {
  final response = await http.get(Uri.parse(FORECAST_ENDPOINT));

  if (response.statusCode == 200) {
    print(jsonDecode(response.body));
    return Weather.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load weather data');
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Weather App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<Weather> weatherData;

  @override
  void initState() {
    super.initState();
    weatherData = fetchWeatherData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder<Weather>(
        future: weatherData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Weather Info In',
                  ),
                  Text(
                    '${snapshot.data!.location}',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  const Text(
                    'Temp',
                  ),
                  Text(
                    '${snapshot.data!.temp}',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              ),
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }

          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
