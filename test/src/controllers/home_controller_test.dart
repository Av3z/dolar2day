import 'package:dolar2day/src/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  final homeController = HomeController(toText, fromText);

  test('convert real to dolar', (){
    toText.text = '2.0';
    homeController.convert();
    expect(fromText.text, '0.36');
  });
}