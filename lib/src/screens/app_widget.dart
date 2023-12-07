import 'package:dolar2day/src/screens/home_view.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

      @override
      Widget build(BuildContext context){
        // ignore: prefer_const_constructors
        return MaterialApp(
          theme: ThemeData.dark(),
          home: HomeView(),
        );
      }
}