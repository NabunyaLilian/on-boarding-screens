import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String hourOfDay = '';
  @override
  void initState() {
    super.initState();
    hourOfDay = timeOfDay();
  }

  String timeOfDay(){
    var hourOfDay = '';
    var hour = DateTime.now().hour;

    if(hour <= 12){
      hourOfDay = "good morning";
    }else if ((hour > 12) && (hour <= 16)){
      hourOfDay = "good afternoon";
    }else if((hour > 16) && (hour < 20)){
      hourOfDay = "good evening";
    }else{
      hourOfDay = "good night";
    }
    return hourOfDay;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF585bae),
        title: Text(widget.title, style: const TextStyle(color: Colors.white),),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome, $hourOfDay ', style: const TextStyle(fontSize: 30, color: Color(0xFF9396cf)),
            ),
          ],
        ),
      ),
    );
  }
}