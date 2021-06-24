import 'package:coursex/Data/HourData.dart';
import 'package:coursex/Data/MotivationData.dart';
import 'package:coursex/Screens/splash/splash_screen.dart';
import 'package:coursex/pageview_home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => HourData()),
        Provider(
          create: (context) => MotivationData(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
