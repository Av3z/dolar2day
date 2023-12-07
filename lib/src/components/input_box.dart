import 'package:dolar2day/src/models/currency_model.dart';
import 'package:flutter/material.dart';
import 'spacing_box.dart';

class InputBox extends StatelessWidget {

  final List<CurrencyModel> items;
  final TextEditingController? textEditing;
  final CurrencyModel? selectedItem;
  final void Function(CurrencyModel? model) onChanged;

  InputBox({
    super.key, 
    required this.items, 
    required this.textEditing, 
    required this.onChanged, 
    required this.selectedItem
    });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            width: 320,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        height: 62,
                        child: DropdownButton<CurrencyModel>(
                          isExpanded: true,
                          value: selectedItem,
                          items: items.map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e.name))
                          ).toList(),
                          onChanged: onChanged,
                        ),
                      ),
                    ),
                    SpacingBox(width: 10,),
                    Expanded(
                      flex: 2,
                      child: TextField(
                        controller: textEditing,
                        decoration: const InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,
                              )
                            )
                          ),
                        ),
                    ),
                ],
              ),
          );
  }
}