class Weather {
  final double temp;
  final String location;

  const Weather({
    required this.temp,
    required this.location,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      location: json['location']['name'],
      temp: json['current']['temp_f'],
    );
  }
}
