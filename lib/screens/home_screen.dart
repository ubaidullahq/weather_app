import 'package:flutter/material.dart';
import 'package:front_end_dev_test_ubaidullah/http_Requests/http_requests.dart';
import 'package:front_end_dev_test_ubaidullah/main.dart';
import 'package:front_end_dev_test_ubaidullah/models/countries_capitals.dart';
import 'package:front_end_dev_test_ubaidullah/widgets/dialog.dart';
import 'package:front_end_dev_test_ubaidullah/widgets/weather_tile.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = 'homeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CountriesCapitals> incomingDataList = [];
  bool _isLoading = true;

  @override
  void initState() {
    // function to get list of data from given API
    getList();
    super.initState();
  }

  void getList() async {
    //  getListData is a function to send get request to backend for data
    var response = await BackEndRequests.getCountriesCapital();
    if (response.statusCode == 200) {
      final responseJson = response.data;
      // log(responseJson);
      setState(() {
        incomingDataList = responseJson.map<CountriesCapitals>((json) => CountriesCapitals.fromJson(json)).toList();
        _isLoading = false;
      });
    } else {
      throw Exception('Failed to fetch Data');
    }
  }

  @override
  Widget build(BuildContext context) {
    // to get the full screen height and width
    double heightOfScreen = MediaQuery.of(context).size.height;
    double widthOfScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'HomeScreen',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(5),
            child: TextButton(
              child: const Text(
                'Logout',
                style: TextStyle(fontSize: 20.0, color: Colors.red),
              ),
              onPressed: () async {
                // on pressing logout user token should be clear in the preferences so that user session would be clear
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.clear();
                setState(() {
                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const MyApp()), (route) => false);
                });
              },
            ),
          ),
        ],
      ),
      // UI for showing list
      body: !_isLoading
          ? SizedBox(
              height: heightOfScreen,
              width: widthOfScreen,
              child: ListView.builder(
                  itemCount: incomingDataList.length,
                  itemBuilder: (ctx, index) => WeatherTileWidget(
                        widthOfScreen: widthOfScreen,
                        heightOfScreen: heightOfScreen,
                        incomingDataList: incomingDataList,
                        index: index,
                      )),
            )
          : const WaitingDialog(),
    );
  }
}
