
import 'package:flutter/material.dart';
import 'package:front_end_dev_test_ubaidullah/screens/home_screen.dart';
import 'package:front_end_dev_test_ubaidullah/screens/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Authentication extends StatefulWidget {
  const Authentication({super.key});

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {

  late Future<bool> futureData;
  String userEmail = '';
  String password = '';

  bool userCredentials = false;
  Future<bool> getAllSavedData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userEmail = prefs.getString('userEmail') ?? '';
    password = prefs.getString('password') ?? '';

    setState(() {
      if (userEmail.isNotEmpty && password.isNotEmpty) {
        userCredentials = true;
      } else {
        userCredentials = false;
      }
    });
    return userCredentials;
  }
   @override
  void initState() {
    futureData = getAllSavedData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
        future: futureData,
        builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          if (snapshot.hasError) {
            final error = snapshot.error;
            return Text('$error');
          } else if (snapshot.hasData) {
            // getAllSavedData() function return boolean data for user session on the basis of that I've decided on which screen where user have to go.
            bool? data = snapshot.data;
            if (data == true) {
              return const HomeScreen();
            } else {
              return const LoginScreen();
            }
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            // when data is still loading wait for response
            return const Scaffold(
              body: Center(
                child: Text(
                  'Please wait...',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            );
          } else {
            return const Scaffold(
              body: Center(
                child: Text(
                  'Please restart the app',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            );
          }
        },
      );

  }
}