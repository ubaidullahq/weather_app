import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:front_end_dev_test_ubaidullah/screens/home_screen.dart';
import 'package:front_end_dev_test_ubaidullah/utility/functions.dart';
import 'package:front_end_dev_test_ubaidullah/widgets/dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../widgets/social_connects.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const routeName = 'loginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _passwrodVissible = false;

  @override
  void initState() {
    _passwrodVissible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double heightOfScreen = MediaQuery.of(context).size.height;
    double widthOfScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      // UI of LoginScreen
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: heightOfScreen * 0.2),
            Text(
              'Hello Again!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: heightOfScreen * 0.05,
              ),
            ),
            const SizedBox(
              height: 0.08,
            ),
            Text(
              'Chance to get your \n life better',
              style: TextStyle(fontSize: heightOfScreen * 0.03, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, right: 20, left: widthOfScreen * 0.1),
              child: Column(
                children: [
                  Form(
                    child: Column(
                      children: [
                        TextField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Username',
                            hintText: 'Enter Username',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(heightOfScreen * 0.02),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: passwordController,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: !_passwrodVissible,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Enter Your Password',
                            suffixIcon: IconButton(
                                icon: Icon(
                                  _passwrodVissible ? Icons.visibility : Icons.visibility_off,
                                  color: Colors.grey,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _passwrodVissible = !_passwrodVissible;
                                  });
                                }),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(heightOfScreen * 0.02),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.only(right: 15, top: heightOfScreen * 0.02),
              child: Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () {},
                  child: const Text('Recovery Password'),
                ),
              ),
            ),
            SizedBox(
              height: heightOfScreen * 0.05,
            ),
            Padding(
              padding: EdgeInsets.only(left: widthOfScreen * 0.1, right: 15),
              child: GestureDetector(
                onTap: () => loginButtonPress(context: context, emailController: emailController, passwordController: passwordController),
                child: Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.green),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: heightOfScreen * 0.03,
            ),
            const Text(
              ' or continue with ',
              style: TextStyle(fontSize: 17),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                // Widget for creating google, apple and facebook authentication
                SocialConnects(imagePath: 'assets/icons/google.png'),
                SizedBox(
                  width: 25,
                ),
                SocialConnects(imagePath: 'assets/icons/appleLogo.png'),
                SizedBox(
                  width: 25,
                ),
                SocialConnects(imagePath: 'assets/icons/facebook.png'),
                SizedBox(
                  width: 25,
                ),
              ],
            ),
            SizedBox(
              height: heightOfScreen * 0.06,
            ),
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    style: TextStyle(color: Colors.black),
                    text: 'Not a member? ',
                  ),
                  TextSpan(
                    style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                    text: 'Register now',
                    recognizer: TapGestureRecognizer()..onTap = () async {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
