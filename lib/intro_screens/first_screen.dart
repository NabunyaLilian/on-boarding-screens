import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Lottie.asset('assets/animation1.json'),
          Container(
              margin: const EdgeInsets.only(left: 20, top: 50, bottom: 50),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Analytics',
                    style: TextStyle(color: Colors.black87, fontSize: 30),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Pellentesque aliquet ligula nulla, in cursus est ullamcorper ac. Quisque varius elit a odio euismod, eget interdum nunc congue.',
                    style: TextStyle(color: Colors.black45),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
