import 'package:dolar2day/src/components/input_box.dart';
import 'package:dolar2day/src/components/primary_button.dart';
import 'package:dolar2day/src/components/spacing_box.dart';
import 'package:dolar2day/src/controllers/home_controller.dart';
import 'package:flutter/material.dart';

import '../components/logo.dart';

class HomeView extends StatefulWidget {

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  TextEditingController toText = TextEditingController();
  TextEditingController fromText =TextEditingController();

    HomeController? homeController;

    @override
  void initState() {
    super.initState();

    homeController = HomeController(toText, fromText);
  }

    @override
    Widget build(BuildContext context){
      return Scaffold(
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              const Logo(),
              SpacingBox(height: 50),
              InputBox(
                selectedItem: homeController?.toCurrency,
                textEditing: toText,
                items: homeController!.currencies, 
                onChanged: (model) {
                  setState(() {
                    homeController?.toCurrency = model;
                  });
                },),
              InputBox(
                selectedItem: homeController?.fromCurrency,
                textEditing: fromText,
                items: homeController!.currencies, 
                onChanged: (model) {
                  setState(() {
                    homeController?.fromCurrency = model;
                  });
                },),
              SpacingBox(height: 50),
              PrimaryButton(
                text: "Convert", 
              onPressed: () {
                homeController?.convert();
              },
               ),      
            ]),
        ),
      );
    }
}