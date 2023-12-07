import 'package:dolar2day/src/components/spacing_box.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              const Text('Dolar', 
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green,
                fontSize: 30.0,
                ),
              ),
              SpacingBox(width: 5,),
              const Text('2', 
              style: TextStyle(
                color: Colors.white,
                fontSize: 35.0 
                ),
              ),
              SpacingBox(width: 5,),
              Text('Day', 
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.green[900],
                fontSize: 30.0
                ),
              ),
            ]),
          );
    }
}