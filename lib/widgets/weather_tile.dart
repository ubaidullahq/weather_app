import 'package:flutter/material.dart';
import 'package:front_end_dev_test_ubaidullah/models/countries_capitals.dart';
import 'package:front_end_dev_test_ubaidullah/screens/weather_screen.dart';

class WeatherTileWidget extends StatelessWidget {
  const WeatherTileWidget({
    super.key,
    required this.widthOfScreen,
    required this.heightOfScreen,
    required this.incomingDataList,
    required this.index,
  });

  final double widthOfScreen;
  final double heightOfScreen;
  final List<CountriesCapitals> incomingDataList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Colors.white,
      margin: EdgeInsets.all(widthOfScreen * 0.05),
      child: Container(
        height: heightOfScreen * 0.15,
        padding: const EdgeInsets.all(8),
        child: ListTile(
          onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WeatherScreen(
                    itemList: incomingDataList,
                    initialIndex: index,
                  ),
                ),
              );
            },
          leading: const Icon(
            Icons.location_on,
            color: Colors.blue,
          ),
          title: Text(incomingDataList[index].name!.common ?? ''),
          trailing: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30, width: 30, child: Image.asset('assets/icons/weather.png')),
              Text(
                incomingDataList[index].capital!.isNotEmpty ? incomingDataList[index].capital!.first : '',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
