import 'package:flutter/material.dart';

class WaitingDialog extends StatelessWidget {
  final textColor;
  static showLoaderDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: Row(
        children: [
          const CircularProgressIndicator(),
          Container(margin: const EdgeInsets.only(left: 7), child: const Text("Loading...")),
        ],
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  const WaitingDialog({Key? key, this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double heightOfScreen = MediaQuery.of(context).size.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Center(
          child: CircularProgressIndicator(),
        ),
        SizedBox(
          height: heightOfScreen * 0.01,
        ),
         Text(
          'Please wait...',
          style: TextStyle(fontSize: 18,color: textColor),
        )
      ],
    );
  }
}
