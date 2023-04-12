import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:front_end_dev_test_ubaidullah/screens/home_screen.dart';
import 'package:front_end_dev_test_ubaidullah/widgets/dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

// user Credentials
String userEmail = 'aleks@gmail.com';
String password = '12345';

void setUserDatalocally(String userEmail, String password) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('userEmail', userEmail);
  await prefs.setString('password', password);
}

void loginButtonPress({required BuildContext context, required emailController, required passwordController}) async {
  // function for validation and authenticating user
  if (emailController.text.trim() != userEmail) {
    FocusManager.instance.primaryFocus?.unfocus();
    Fluttertoast.showToast(
        msg: "Please enter Correct Email!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey,
        textColor: Colors.black,
        fontSize: 16.0);
  } else if (passwordController.text.trim() != password) {
    FocusManager.instance.primaryFocus?.unfocus();
    Fluttertoast.showToast(
        msg: "Please enter Correct Password!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey,
        textColor: Colors.black,
        fontSize: 16.0);
  } else {
    setUserDatalocally(emailController.text.trim(), passwordController.text.trim());
    // while waiting for response show Spinning dialog
    WaitingDialog.showLoaderDialog(context);
    Future.delayed(const Duration(seconds: 3)).then((value) {
      // dismiss dialog and route to the MyApp class
      Navigator.of(context, rootNavigator: true).pop(context);
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const HomeScreen()), (route) => false);
    });
  }
}
