import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Lottie.asset('assets/animation3.json'),
          Container(
              margin: const EdgeInsets.only(left: 20, top: 50, bottom: 50),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Business Solution',
                    style: TextStyle(color: Colors.black87, fontSize: 30),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Aliquam tempor urna sagittis justo egestas, cursus tempor justo placerat. Fusce non tortor ipsum.',
                    style: TextStyle(color: Colors.black45),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
