import 'package:flutter/material.dart';
import 'package:front_end_dev_test_ubaidullah/models/city_weather.dart';
import 'package:front_end_dev_test_ubaidullah/screens/weather_screen.dart';

class CityWeatherWidget extends StatelessWidget {
  const CityWeatherWidget({
    super.key,
    required this.widget,
    required int currentIndex,
    required CityWeather cityWeather,
  }) : _currentIndex = currentIndex, _cityWeather = cityWeather;

  final WeatherScreen widget;
  final int _currentIndex;
  final CityWeather _cityWeather;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.location_on,
              color: Colors.blue,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              widget.itemList[_currentIndex].capital!.isNotEmpty ? widget.itemList[_currentIndex].capital!.first : '',
              style: const TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 20),
        SizedBox(height: 80, width: 80, child: Image.asset('assets/icons/weather.png')),
        const SizedBox(height: 20),
        Text(
          _cityWeather.weather!.first.description,
          style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        const SizedBox(height: 50),
        Text(
          '${_cityWeather.main!.temp}°F',
          style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30.0),
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.air, color: Colors.white, size: 30),
            const SizedBox(width: 10),
            Text(
              '${_cityWeather.wind!.speed} mp/hr',
              style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30.0),
            ),
          ],
        )
      ],
    );
  }
}