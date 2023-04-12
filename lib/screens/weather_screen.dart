import 'package:flutter/material.dart';
import 'package:front_end_dev_test_ubaidullah/http_Requests/http_requests.dart';
import 'package:front_end_dev_test_ubaidullah/models/city_weather.dart';
import 'package:front_end_dev_test_ubaidullah/models/countries_capitals.dart';
import 'package:front_end_dev_test_ubaidullah/widgets/city_weather_widget.dart';
import 'package:front_end_dev_test_ubaidullah/widgets/dialog.dart';

class WeatherScreen extends StatefulWidget {
  static const routeName = '/weather';

  final List<CountriesCapitals> itemList;
  final int initialIndex;

  const WeatherScreen({super.key, required this.itemList, required this.initialIndex});

  @override
  State<WeatherScreen> createState() => _SwipeLeftToLoadNextState();
}

class _SwipeLeftToLoadNextState extends State<WeatherScreen> {
  int _currentIndex = 0;
  bool _isLoading = true;

  CityWeather _cityWeather = CityWeather();

  final Color backgroundColor = const Color(0XFF14306F);

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
    getCityWeather();
  }

  void _onSwipeLeft() {
    setState(() {
      _isLoading = true;
      _currentIndex = (_currentIndex + 1) % widget.itemList.length;
      getCityWeather();
    });
  }

  void getCityWeather() async {
    //  getListData is a function to send get request to backend for data
    var response =
        await BackEndRequests.getCapitalWeather(widget.itemList[_currentIndex].latlng![0], widget.itemList[_currentIndex].latlng![1]);
    if (response.statusCode == 200) {
      final responseJson = response.data;
      // log(responseJson);
      setState(() {
        _cityWeather = CityWeather.fromJson(responseJson);
        _isLoading = false;
      });
    } else {
      throw Exception('Failed to fetch Data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
      ),
      body: !_isLoading
          ? Center(
              child: Dismissible(
                key: UniqueKey(),
                direction: DismissDirection.endToStart,
                onDismissed: (direction) => _onSwipeLeft(),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: CityWeatherWidget(currentIndex: _currentIndex, widget: widget, cityWeather: _cityWeather),
                ),
              ),
            )
          : const WaitingDialog(textColor: Colors.white),
    );
  }
}
