import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Lottie.asset('assets/animation2.json'),
          Container(
              margin: const EdgeInsets.only(left: 20, top: 50, bottom: 50),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Data Proven Strategy',
                    style: TextStyle(color: Colors.black87, fontSize: 30),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Duis et sollicitudin ipsum. Suspendisse nisl nisi, condimentum vel luctus sit amet, fringilla ut massa.',
                    style: TextStyle(color: Colors.black45),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
